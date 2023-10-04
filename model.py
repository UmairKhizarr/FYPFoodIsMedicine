import pandas as pd
import numpy as np

dataset = pd.read_csv("dataset.csv")
#First of all extract required fields from the dataset
dataset = dataset[['Meal_Id','Name','catagory','description','Veg_Non','Nutrient','Disease','Diet']]
dataset.head()

#Make a new field Name Tags in our Orginal Dataset we merge all the important fields in a single.
dataset["Tags"] = dataset['catagory'] + ' ' + dataset['Veg_Non'] + dataset['Disease']
# print(dataset['Tags'])

dataset = dataset[['Meal_Id','Name','description','Nutrient','Disease','Diet','Tags']]
# print(dataset.head())

from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
# It firstly compute all the unique words in the tag element of original dataset.
# And then make vector of each tag element with that unique elements of n dimensions.

def find_func(str):
  input_tag = [str.lower()]
  tags = input_tag + dataset['Tags'].tolist()

  #Create a CountVectorizer instance and fit it on the combined set of tags for same number of dimensions 
  cv = CountVectorizer()
  cv.fit(tags)

  #Making Vectors
  vector = cv.transform(dataset['Tags'])
  input_vector = cv.transform(input_tag)
  #print("Input_Vector_Shape" , input_vector.shape , "\nOriginal Vector Shape" , vector.shape)
  
  similarity_bt_vectors = cosine_similarity(input_vector,vector) #Returns a two-dimensional NumPy Array.
  result = np.array(similarity_bt_vectors.flatten())
  # flatten function here is used to convert two-dimensional array into a one-dimensional array.

  # Extract only first the most similar Tag Index from the orginal Dataset
  resultant_index = result.argsort()[::-1][1]
  # print(resultant_index)
  # Now by putting that resultant_index we can get everything from our dataset related to that index
  # First we have get respective tag form the dataser
  # And then we get our required description/Diet Plan
 
  # most_similar_tag = dataset.loc[resultant_index, 'Tags']
  diet_name = dataset.loc[resultant_index,"Name"]
  diet_Ingredients = dataset.loc[resultant_index, 'description']
  diet_types = dataset.loc[resultant_index,'Diet'] 
  diseases = dataset.loc[resultant_index,'Disease']
  nutrient = dataset.loc[resultant_index,'Nutrient']



  # result =  "\033[1mMost Appropriate Tag that Match with our Input_Tag is:\033[0m\n" + most_similar_tag.upper()
  # "\n\033[1mDiet Plan for the Respective Input Catagoery and Disease is:\033[0m \n" + category_data

  data = {
    "Name":diet_name.upper(),
    "Ingredients": diet_Ingredients,
    "diets":diet_types,
    "diseases":diseases,
    "nutrient":nutrient
  }

  # data = most_similar_tag + category_data
  # print(data)

  return data

str = find_func("chicken veg hypertension")
# print("Similar_Tag\t" , str["Similar_Tag"])
# print("Ingredients \t" , str["Ingredients"])
print(str)

    
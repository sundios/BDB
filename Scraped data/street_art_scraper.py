#To run this script we need to open terminal and go to our folder the script is in and run $ python
#Then we need to copy everything until line 21 and run it in the python terminal
#%for testing if this works before we move on, try something like page_soup.h1 or any html elemnt on the page

from urllib.request import urlopen as uReq
from bs4 import BeautifulSoup as soup

my_url = 'https://eu.canvasartrocks.com/blogs/posts/70529347-121-amazing-banksy-graffiti-artworks-with-locations '


#opening up connection grabbing the page
uClient = uReq(my_url) 

page_html = uClient.read()

#closing the connection
uClient.close()

#html parsing
page_soup = soup(page_html, "html.parser")


#grabs the specific thing we want on the site. We can change the li to any other html element(div,ul,etc). We can also change the class name to any other class name.
containers = page_soup.findAll("p")

# #check how many objects did it find
# len(containers)


# if we want to check the container of a specifict object 
# containers[0]

#exporting to CSV
filename = "street_art.csv"
f = open(filename, "w")

headers = "Title, Info\n" 
f.write(headers)


#for loop that goes into all of our listings
for container in containers:
	title = container


	print("Title:" , title) 
	

	f.write(str(title) + "\n")

f.close()








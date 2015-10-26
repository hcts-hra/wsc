## Wissenschaftssprache Chinesisch / Modern Chinese Scientific Terminologies (WSC)
### Project Description
The WSC-Project  aims to understand the distribution and transformation of Euro-American knowledge
in late imperial China (ca. 1600–1911) through the reconstruction of Chinese scientific terminologies coined, altered, disputed and successively refined since the early nineteenth century. Due to the vast amount of relevant sources, the project will limit its scope for the time being to the disciplines of philosophy, logic, physics,
chemistry, geography (i.e. "knowledge on foreign countries"), politics and international law. In addition, it will concentrate on the formative period of modern Chinese scientific vocabulary between ca. 1840 and 1930.

In its current phase, the project focuses on the revision of a bibliographical database documenting translations of Western science and thought into Chinese during the period of investigation. Other data like biographical information on the authors and translators, or new terms developed and employed in these writings, are stored in
related databases linked to the bibliography, which will be prepared for online access in two planned future stages of the project. Once completed, the three repositories will make the transmission of knowledge transparent and accessible by providing comprehensive information on the media, institutions, people, texts, terms, sites and images
involved in diverse instances of distribution, adaptation and appropriation of knowledge from Euro-America and Japan in late Qing and early Republican China.

### Developing
WSC runs on [eXist-db 2.2] (https://github.com/eXist-db/exist)
WSC consists of an application and a separate data package. 

### Building with ant
Make sure ant is up to date (>1.8).

To build this application package clone or fork this respository, then go into the folder for this repo.
````shell
$ cd wsc
````
 calling ant in the wsc directory. 
````shell
$ ant
````
This creates a .xar file in ````/wsc/build````
You can install the app by selecting this file via package manager > add a package in eXist.

The data package by default resides in 
````
/db/resources/commons/WSC
````

We are in the processes of revising the data for our next release. 
A stable link will be added soon.

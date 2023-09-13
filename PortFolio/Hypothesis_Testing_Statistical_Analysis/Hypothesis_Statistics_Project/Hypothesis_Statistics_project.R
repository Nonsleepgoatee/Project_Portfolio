head(df)
tail(df)
str(df) #for info of dataframe
summary(df) #statistical summary of dataframe like describe in python
colSums(is.na(df)) #for finding missing value for each col, like isnull().sum() 
#inPython
num_df=df[,-which(names(df)=='Species')] #in order to calculate the correlation
# drop non numeric data
corre=cor(num_df) # making correlation matrix
ggcorrplot(corre,type='lower',lab=T,lab_size=4,method='circle')
heatmap(corre,symm=T) # both function for drawing correlation map
df%>% select(Species)%>%n_distinct() # df[col].nunique() function in python
df%>% select(region)%>% distinct() # df[col].unique() function in python
nrow(df),ncol(df)
sum(complete.cases(df))
barplot(table(df$sex))#draw histagram for categorical featurs
hist(df$col),boxplot(df$col)
t_test_result <- t.test(charges ~ smoker, data = df)

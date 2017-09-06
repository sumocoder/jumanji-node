#Base Node Container
FROM 280159221453.dkr.ecr.us-east-1.amazonaws.com/flipp/node-base:8

#Copy Application code to app folder
COPY . /var/app/

#Expose port 3000 which the app runs on
EXPOSE 3000

#Start Command
CMD ["npm", "start"]
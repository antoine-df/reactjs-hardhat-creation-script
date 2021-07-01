if [ "$#" -ne 1 ]
then
	create-react-app my-app && cd my-app
else
	create-react-app $1 && cd $1
fi

npx hardhat run

touch .env

touch .gitignore

printf ".env\n" >> .gitignore

npm run start

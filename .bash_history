gcloud services enable run firestore.googleapis.com bigquery.googleapis.com cloudkms.googleapis.com
gcloud config set project blockchain-demo-474018
gcloud services enable run.googleapis.com firestore.googleapis.com bigquery.googleapis.com cloudkms.googleapis.com
gcloud services list --enabled
ls
mkdir blockchain-demo
cd blockchain-demo/
vi app.py
vi requirements.txt
vi Dockerfile
pip install -r requirements.txt
python app.py
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud projects get-iam-policy blockchain-demo-474018
gcloud projects add-iam-policy-binding blockchain-demo-474018   --member="serviceAccount:251617923945@cloudbuild.gserviceaccount.com"   --role="roles/editor"
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
curl -X POST https://blockchain-app-251617923945.asia-south1.run.app/issue -H "Content-Type: application/json" -d '{"currency":"INR","amount":1000}'
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
curl -X POST https://blockchain-app-251617923945.asia-south1.run.app/issue -H "Content-Type: application/json" -d '{"currency":"INR","amount":1000}'
curl -X POST https://blockchain-app-251617923945.asia-south1.run.app/swap -H "Content-Type: application/json" -d '{"from_currency":"INR","to_currency":"USD","amount":500}'
curl https://blockchain-app-251617923945.asia-south1.run.app/ledger
pwd
mkdir blockchain-frontend
cd blockchain-frontend
npx create-react-app .
npm install axios
l
ls
cd src/
ls
vi App.js 
vi App.css 
npm start
pwd
cd ..
ls
cd ..
ls
vi app.py 
vi requirements.txt 
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
vi requirements.txt 
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
pwd
ls
cd blockchain-frontend/
ls
cd src/
ls
vi App.js 
npm start
npm run build
firebase deploy
pwd
cd ..
firebase init hosting
firebase login
npm install axios react-chartjs-2 chart.js
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
cd ..
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
curl -X POST https://blockchain-app-251617923945.asia-south1.run.app/issue -H "Content-Type: application/json" -d '{"currency":"INR","amount":1000}'
gcloud firestore databases describe
gcloud projects add-iam-policy-binding blockchain-demo-474018   --member="serviceAccount:251617923945-compute@developer.gserviceaccount.com"   --role="roles/datastore.user"
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
vi requirements.txt 
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
vi requirements.txt 
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
gcloud logs read --project blockchain-demo-474018 --service=blockchain-app --limit 50
gcloud logging read   "resource.type=cloud_run_revision AND resource.labels.service_name=blockchain-app"   --project=blockchain-demo-474018   --limit=50   --format="table(timestamp, severity, textPayload)"
vi requirements.txt 
vi app.py 
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
cd blockchain-frontend/
pwd
ls
cd blockchain-demo/blockchain-frontend/
npm start
ls
cd ..
ls
vi app.py 
ls
cd ..
ls
cp blockchain-demo/ bkp
mkdir bkp
cp blockchain-demo/ bkp
cp -r blockchain-demo/ bkp
ls
cd bkp/
ls
cd ..
ls
cd blockchain-demo/
vi app.py 
vi requirements.txt 
ls
vi Dockerfile 
ls
gcloud services enable   run.googleapis.com   firestore.googleapis.com   bigquery.googleapis.com   cloudkms.googleapis.com
gcloud kms keyrings create blockchain-ring --location=asia-south1
gcloud kms keys create blockchain-key   --location=asia-south1   --keyring=blockchain-ring   --purpose=encryption
bq --location=asia-south1 mk blockchain_ledger
vi app.py 
vi bigquery_stream.py
pwd
ls
vi kms_utils.py
vi requirements.txt 
vi Dockerfile 
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
gcloud run services describe blockchain-app   --region=asia-south1   --project=blockchain-demo-474018   --format="value(status.url,status.conditions)"
gcloud run logs read blockchain-app   --region=asia-south1   --project=blockchain-demo-474018   --limit=30
gcloud run services logs read blockchain-app   --region=asia-south1   --project=blockchain-demo-474018   --limit=50
vi Dockerfile 
gcloud builds submit --tag gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
curl -X POST https://blockchain-app-251617923945.asia-south1.run.app/issue -H "Content-Type: application/json" -d '{"currency":"INR","amount":1000}'
gcloud run services logs read blockchain-app   --region=asia-south1   --project=blockchain-demo-474018   --limit=50
gcloud run services describe blockchain-app   --region asia-south1   --project blockchain-demo-474018   --format "value(spec.template.spec.serviceAccountName)"
gcloud kms keys add-iam-policy-binding blockchain-key     --location asia-south1     --keyring blockchain-ring     --project blockchain-demo-474018     --member "serviceAccount:251617923945-compute@developer.gserviceaccount.com"     --role "roles/cloudkms.cryptoKeyEncrypterDecrypter"
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --region asia-south1     --platform managed
curl -X POST https://blockchain-app-251617923945.asia-south1.run.app/issue -H "Content-Type: application/json" -d '{"currency":"INR","amount":1000}'
gcloud run services logs read blockchain-app     --region=asia-south1     --project=blockchain-demo-474018     --limit=50     --format="value(textPayload)"
bq --location=asia-south1 mk --dataset blockchain-demo-474018:blockchain_ledger
bq mk --table blockchain-demo-474018:blockchain_ledger.transactions currency:STRING,amount:FLOAT,signature:STRING,timestamp:TIMESTAMP
gcloud projects add-iam-policy-binding blockchain-demo-474018     --member="serviceAccount:251617923945-compute@developer.gserviceaccount.com"     --role="roles/bigquery.dataEditor"
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --region asia-south1     --platform managed
curl -X POST https://blockchain-app-251617923945.asia-south1.run.app/issue -H "Content-Type: application/json" -d '{"currency":"INR","amount":1000}'
cd blockchain-frontend/
cd src/
vi App.js 
pwd
ls
mkdir service
vi ledgerService.js
cd ..
ls
pwd
ls
cd src/
ls
cd service/
ls
vi ledgerService.js
cd ..
ls
rm ledgerService.js 
mkdir components
cd components/
pwd
vi IssueForm.js
vi SwapForm.js
vi Ledger.js
pwd
cd ..
ls
vi Style.css
pwd
cd ..
ls
vi firebase.json
npm start
pwd
cd src/
ls
cd service/
ls
vi ledgerService.js
cd ..
mv service services
pwd
ls
npm start
npm install recharts
cd ..
npm start
cd src/
ls
cd components/
ls
vi Ledger.js 
cd ..
npm start
cd src/
ls 
cd components/
ls
vi Ledger.js 
cd ..
cd services/
ls
vi ledgerService.js 
cd ..
pwd
cd ..
ls
vi app.py 
cd blockchain-frontend/src/components/
vi Ledger.js 
cd ..
pwd
cd ..
npm start
pwd
cd src/components/
vi Ledger.js 
npm start
cd ..
npm start
cd src/components/
ls
vi Ledger.js 
npm start
cd ..
cd components/
rm Ledger.js 
vi Ledger.js
npm start
vi SwapForm.js 
cd ..
cd services/
ls
vi ledgerService.js 
cd ..
cd components/
vi SwapForm.js 
vi Ledger.js 
vi SwapForm.js 
ls
vi IssueForm.js 
cd ..
ls
vi App.js 
npm start
cd ..
ls
cd src/services/
vi ledgerService.js 
cd ../components/
vi Ledger.js 
npm start
vi Ledger.js 
npm start
vi Ledger.js 
vi SwapForm.js 
vi IssueForm.js 
cd ..
cd services/
vi ledgerService.js 
npm start
cd ../components/
vi Ledger.js 
cd ..
vi delete_ledger.py
python delete_ledger.py
pip install firebase-admin
python delete_ledger.py
cd blockchain-frontend/
npm start
cd ../..
pwd
cd blockchain-demo/
ls
vi delete_ledger.py 
python delete_ledger.py
vi delete_ledger.py 
pwd
ls
cd blockchain-frontend/
npm start
cd ..
docker build -t gcr.io/blockchain-demo-474018/blockchain-app .
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
docker build -t gcr.io/blockchain-demo-474018/blockchain-app
docker build -t gcr.io/blockchain-demo-474018/blockchain-app .
docker push gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
cd blockchain-frontend/
npm start
cd blockchain-demo/blockchain-frontend/
npm start
cd ..
vi app.py 
cat app.py 
rm app.py 
vi app.py
cd blockchain-frontend/src/components/
vi BalanceBoard.js
cd ..
ls
cd src/
ls
vi App.js 
cd ..
docker build -t gcr.io/blockchain-demo-474018/blockchain-app .
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
cd blockchain-frontend/
npm start
cd src/components/
ls
vi BalanceBoard.js 
npm start
cd ../../..
vi app.py 
gcloud run deploy blockchain-app   --image gcr.io/blockchain-demo-474018/blockchain-app   --platform managed   --region asia-south1   --allow-unauthenticated
docker build -t gcr.io/blockchain-demo-474018/blockchain-app
docker build -t gcr.io/blockchain-demo-474018/blockchain-app.
docker build -t gcr.io/blockchain-demo-474018/blockchain-app .
docker push gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
cd blockchain-frontend/
npm start
cd src/components/
vi BalanceBoard.js 
cd ../../
npm start
cd src/components/
vi BalanceBoard.js 
cat BalanceBoard.js 
vi BalanceBoard.js 
cd ../..
npm start
cd ..
cd blockchain-frontend/src/
cd ../
cd src/
vi App.js 
cd components/
ls
vi Ledger.js 
cd ..
vi App.js 
cd ..
npm start
cd src/
vi App.
vi App.js 
cd ..
npm start
cd ..
cat app.py 
vi app.py 
docker build -t gcr.io/blockchain-demo-474018/blockchain-app .
docker push gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
curl -X GET https://blockchain-app-251617923945.asia-south1.run.app/verify/0091e354
gcloud logs read --project=blockchain-demo-474018 --limit=50
gcloud run services logs read blockchain-app --region asia-south1 --limit=50
ls
vi kms_utils.py 
gcloud kms keyrings create blockchain-ring --location asia-south1
gcloud kms keys create blockchain-key   --location asia-south1   --keyring blockchain-ring   --purpose asymmetric-sign   --default-algorithm rsa-sign-pkcs1-2048-sha256
gcloud kms keys create blockchain-key   --location asia-south1   --keyring blockchain-ring   --purpose asymmetric-signing   --default-algorithm rsa-sign-pkcs1-2048-sha256
gcloud kms keys versions get-public-key 1   --location asia-south1   --keyring blockchain-ring   --key blockchain-key   --output-file public_key.pem
ls
gcloud kms keys create blockchain-sign-key   --location asia-south1   --keyring blockchain-ring   --purpose asymmetric-signing   --default-algorithm rsa-sign-pkcs1-2048-sha256
gcloud kms keys versions get-public-key 1   --location asia-south1   --keyring blockchain-ring   --key blockchain-sign-key   --output-file public_key.pem
ls
vi Dockerfile 
vi kms_utils.py 
docker build -t gcr.io/blockchain-demo-474018/blockchain-app .
docker push gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
	
	curl -X GET https://blockchain-app-251617923945.asia-south1.run.app/verify/0091e354
curl -X GET https://blockchain-app-251617923945.asia-south1.run.app/verify/0091e354
gcloud run services logs read blockchain-app --region asia-south1 --limit=50
gcloud run services describe blockchain-app     --region asia-south1     --format="value(spec.template.spec.serviceAccountName)"
gcloud kms keys add-iam-policy-binding blockchain-key     --location asia-south1     --keyring blockchain-ring     --member "serviceAccount:251617923945-compute@developer.gserviceaccount.com"     --role "roles/cloudkms.signer"
gcloud run deploy blockchain-app     --region asia-south1     --image gcr.io/YOUR_PROJECT/blockchain-app:latest     --platform managed
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
gcloud run services logs read blockchain-app --region asia-south1 --limit=50
vi kms_utils.py 
gcloud kms keys list --location asia-south1 --keyring blockchain-ring
gcloud kms keys versions create 1     --key blockchain-sign-key     --keyring blockchain-ring     --location asia-south1
gcloud kms keys versions create     --key blockchain-sign-key     --keyring blockchain-ring     --location asia-south1
gcloud kms keys versions list     --key blockchain-sign-key     --keyring blockchain-ring     --location asia-south1
gcloud kms keys add-iam-policy-binding blockchain-sign-key     --location asia-south1     --keyring blockchain-ring     --member "serviceAccount:251617923945-compute@developer.gserviceaccount.com"     --role "roles/cloudkms.signer"
gcloud run deploy blockchain-app     --region asia-south1     --image gcr.io/YOUR_PROJECT/blockchain-app:latest     --platform managed
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
vi app.py 
cat app.py 
vi app.py 
cat app.py 
cat kms_utils.py 
rm kms_utils.py 
vi kms_utils.py
docker build -t gcr.io/blockchain-demo-474018/blockchain-app .
docker push gcr.io/blockchain-demo-474018/blockchain-app
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
curl https://blockchain-app-251617923945.asia-south1.run.app/verify/6e476bb9
gcloud run services logs read blockchain-app --region asia-south1 --limit=50
gcloud kms keys add-iam-policy-binding blockchain-sign-key     --location asia-south1     --keyring blockchain-ring     --member="serviceAccount:251617923945-compute@developer.gserviceaccount.com"     --role="roles/cloudkms.publicKeyViewer"
gcloud kms keys get-iam-policy blockchain-sign-key     --location asia-south1     --keyring blockchain-ring
curl https://blockchain-app-251617923945.asia-south1.run.app/verify/6e476bb9
npm start
cd blockchain-frontend/
bq query --nouse_legacy_sql 'SELECT * FROM `blockchain-demo-474018.ledger_dataset.transactions` ORDER BY timestamp DESC LIMIT 10'
bq --location=asia-south1 mk --dataset blockchain-demo-474018:ledger_dataset
bq --location=asia-south1 mk --table blockchain-demo-474018:ledger_dataset.transactions id:STRING,details:STRING,type:STRING,timestamp:STRING,signature:STRING
vi bigquery_stream.py
ls
rm bigquery_stream.py 
cd blockchain-demo/
vi bigquery_stream.py
vi bigquery_stream.py 
vi app.py 
docker build -t gcr.io/blockchain-demo-474018/blockchain-app .
docker push gcr.io/blockchain-demo-474018/blockchain-app
gcloud projects add-iam-policy-binding blockchain-demo-474018   --member="serviceAccount:251617923945-compute@developer.gserviceaccount.com"   --role="roles/bigquery.dataEditor"
gcloud run deploy blockchain-app     --image gcr.io/blockchain-demo-474018/blockchain-app     --platform managed     --region asia-south1     --allow-unauthenticated
bq query --location=asia-south1 --nouse_legacy_sql 'SELECT * FROM `blockchain-demo-474018.ledger_dataset.transactions` ORDER BY timestamp DESC LIMIT 10'
pwd
ls
git init
git add .
git commit -m "Initial commit"
git config --global user.email "nileshmaurya789@gmail.com"
git config --global user.name "Nilesh Maurya"
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/nilesh-nitw/blockchain-app.git
git push origin
git push -u origin main
git remote add origin https://github.com/nilesh-nitw/blockchain
git remote add origin https://github.com/nilesh-nitw/blockchain.git
git push origin
git push -u origin main
git remote remove origin
git remote add origin https://github.com/nilesh-nitw/blockchain-app.git
git push -u origin main
pwd
cd ..
git init
git add .
git status

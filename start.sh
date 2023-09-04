if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Satan-tg/Not-repo.git /Not-repo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Not-repo
fi
cd /Not-repo
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py

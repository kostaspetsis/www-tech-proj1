FILE=newfile.txt
REMOTE=kpetsis@inf-server.inf.uth.gr
# CUR_DIR=''
make:make-index make-styles make-img
make-index:index.html
# ifeq ($(wildcard $(FILE)), )
# 	# first time to do-make command
# 	# This will stop the make trying to resolve HEADER_FILES for echo :)
# 	echo "ERROR: no $(FILE)"
# 	echo "Hello" > $(FILE)

	scp index.html $(REMOTE):/home/inf2015/kpetsis/public_html/
	scp projects.html $(REMOTE):/home/inf2015/kpetsis/public_html/
	scp report.pdf $(REMOTE):/home/inf2015/kpetsis/public_html/
	# cd ~/Desktop/Σχολή/WWW/www-tech-proj1/
# else
# 	# second time to do-make command(dont vpn)
# 	# File exists, continue or do something else...
# 	rm $(FILE)
# endif	
make-styles:styles.css styles_BLUE.css projects_styles.css
	scp styles.css $(REMOTE):/home/inf2015/kpetsis/public_html/
	scp styles_BLUE.css $(REMOTE):/home/inf2015/kpetsis/public_html/
	scp projects_styles.css $(REMOTE):/home/inf2015/kpetsis/public_html/
make-img:img
	scp -r img/ $(REMOTE):/home/inf2015/kpetsis/public_html/

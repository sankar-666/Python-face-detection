from flask import *
import uuid
from database import *
import os
from core import *
from capture import *


app=Flask(__name__)
app.secret_key="core"

@app.route('/add',methods=['get','post'])
def home():
	data={}
	
		
	if "submits" in request.form: 
		name=request.form['name']

		i=request.files['image']
		path="static/uploads/"+str(uuid.uuid4())+i.filename
		i.save(path)

		q="insert into face values(null,'%s','%s')" %(name,path)
		id=insert(q)


		# # path = 'static/uploads/'
		# path=""
		# # Check whether the   
		# # specified path is   
		# # an existing file 
		# pid=str(id)
		# isFile = os.path.isdir("static/trainimages/"+pid)  
		# print(isFile)
		# if(isFile==False):
		# 	os.mkdir('static\\trainimages\\'+pid)
		# image1=request.files['image1']
		# path="static/trainimages/"+pid+"/"+str(uuid.uuid4())+image1.filename
		# image1.save(path)

		# image2=request.files['image2']
		# path="static/trainimages/"+pid+"/"+str(uuid.uuid4())+image2.filename
		# image2.save(path)

		# image3=request.files['image3']
		# path="static/trainimages/"+pid+"/"+str(uuid.uuid4())+image3.filename
		# image3.save(path)
		captures(id)
		enf("static/trainimages/")

		
		flash('Added successfully...')
		return redirect(url_for('home'))

	q="select * from face"
	res=select(q)
	# print(res)
	data['student']=res

	return render_template('sample.html',data=data)


@app.route('/facedetection')
def facedetection():
	s=val()
	return render_template('facedetection.html')

@app.route('/',methods=['get','post'])
def login():
	if "btn" in request.form:
		s=vallogin()
		flash(s)
		return redirect(url_for("emphome"))

	return render_template('login.html')


@app.route('/emphome')
def emphome():

	return render_template('employee_home.html')

@app.route('/reg',methods=['get','post'])
def reg():
    if 'btn' in request.form:
        name=request.form['name']
        email=request.form['email']

    

        q="insert into login values(null,'employee')"
        id=insert(q)
        q="insert into employee values(null,'%s','%s','%s')"%(id,name,email)
        insert(q)
        captures(id)
        enf("static/trainimages/")
        flash('Registration Successfull ...')
        return redirect(url_for('reg'))
    return render_template('employee_reg.html')


app.run(debug=True,port=5002)
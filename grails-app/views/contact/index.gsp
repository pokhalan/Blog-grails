<!<html>
<head>
    <meta name="layout" content="site"/>
    <title>Home</title>
</head>

<body>
<div class="container">
    <div class="text-center">
        <h2>Contact Info:</h2>

        <h3>Cell:2089048940</h3>

        <h3>Email:
            <ul>
                <p><a href="mailto:pokhalan@isu.edu">pokhalan@isu.edu</a></p>

                <p><a href="mailto:pokhalan@isu.edu">alankarpokhrel05@gmail.com</a></p>

                <p><a href="mailto:pokhalan@isu.edu">alankarpokhrel05@outlook.com</a></p>
            </ul>
        </h3>
    </div>

    <div class="text-center">

        <img src="http://www.thrivehealthsystems.com/uploads/9/8/2/2/9822955/contact-us_orig.png" class="img-responsive" alt="">
    </div>

    <div class="row">

        <g:form controller="contact" action="save" name="contactUs" >
            <div class="form-group">
                <div class="row">
                    <div class="col-md-6">
                        <input type="text" class="form-control col-md-6"  placeholder="First Name" name="firstName">
                    </div>

                    <div class="col-md-6">
                        <input type="text" class="form-control col-md-6" placeholder="Last Name" name="lastName">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <input type="email" class="form-control" name="email" placeholder="Enter email">
                <textarea class="form-control" name="message"
                          placeholder="Insert your concerns here! Voila! BOB BOB BOB!"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <pre>

            </pre>
        </g:form>
    </div>
</div>
</body>
</html>
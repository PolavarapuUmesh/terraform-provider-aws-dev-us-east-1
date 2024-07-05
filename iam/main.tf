resource "aws_iam_user" "user1"{
   name = var.user_names[0]
}

resource "aws_iam_user" "user2"{
   name = var.user_names[1]
}

resource "aws_iam_user" "user3"{
   name = var.user_names[2]
}

#attach adminfullaccess policy to users 
resource "aws_iam_user_policy_attachment" "admin_policy1"{
  user = aws_iam_user.user1.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

#attach adminfullaccess policy to users
resource "aws_iam_user_policy_attachment" "admin_policy2"{
  user = aws_iam_user.user2.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
}

#attach adminfullaccess policy to users
resource "aws_iam_user_policy_attachment" "admin_policy3"{
  user = aws_iam_user.user3.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}


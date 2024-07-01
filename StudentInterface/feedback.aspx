<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
    padding: 0;
    margin: 0;
}
.container {
    height: 100%;
    width: 100vw;
    background-color: rgb(204, 194, 194);
    padding: 1px 26px;
  }
.line1{
    margin-top: 10px;
    color: #d1caca;
}
.row{
    display: flex;
    align-items: center;
    flex-direction: row;
}
.flex_between{
    align-items: center;
    justify-content: space-between;
}
.w_50{
    width: 50%;
}
.input_heading{
    font-weight: bolder;
    margin-top: 30px;
}
.p5{
    margin-top: 10px;
    padding-left: 25px;
}
.options_alignment{
    align-items: center;
    justify-content: flex-end;
}
.options{
    padding: 8px;
    border: 1px solid rgb(133, 130, 130);
}
.w80{
    width: 80%;
}
.top_tag{
    padding: 8px 11px;
}
.bg_dark_grey{
    background-color: darkgray;
}
.Submit_button{
    margin: auto;
    padding: 5px 12px;
    border-radius: 2px;
    background-color: rgb(90, 89, 89);
    border: 1px solid transparent;
    color: whitesmoke;
    font-weight: bold;
}
.button{
    width: 100%;
    display: flex;
    padding: 20px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
      <h1>Teachers Assessment Form</h1>
      <hr class="line1" />
      <div class="input_heading">Date</div>
      <input type="date" name="Date" id="d1" />
      <div>Date</div>
      <div class="input_heading">Name of Teacher</div>
      <div class="row">
        <div>
          <input type="text" name="" id="" />
          <div>First Name</div>
        </div>
        <div>
          <input type="text" name="" id="" />
          <div>Last Name</div>
        </div>
      </div>
      <hr class="line1" />
      <div class="row flex_between w_50">
        <div>
          <div class="input_heading">Subject</div>
          <input type="text" name="" id="" />
        </div>
        <div>
          <div class="input_heading">Schedule</div>
          <input type="text" name="" id="" />
        </div>
      </div>
      <div class="row flex_between w_50">
        <div>
          <div class="input_heading">Room Number</div>
          <input type="text" name="" id="" />
        </div>
        <div>
          <div class="input_heading">School year</div>
          <input type="text" name="" id="" />
        </div>
      </div>
      <div>
        <div class="input_heading">
          Please fill out the form in evaluating your instructor for the
          semester. After completion, please press the submit button.
        </div>
        <div>
          <div class="input_heading">
            For reference, the metric are as follows:
          </div>
          <ol class="p5">
            <li>Poor</li>
            <li>Below Average</li>
            <li>Average</li>
            <li>Good</li>
            <li>Excellent</li>
          </ol>
        </div>
      </div>
      <div class="options_menu">
        <div class="input_heading">Appearance and Personal Presentation *</div>
        <div>
          <div class="row">
            <div
              class="options w80"
              style="border: 1px solid transparent"
            ></div>
            <div class="row options_alignment bg_dark_grey">
              <div class="options top_tag">1</div>
              <div class="options top_tag">2</div>
              <div class="options top_tag">3</div>
              <div class="options top_tag">4</div>
              <div class="options top_tag">5</div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher attends class in a well presentable manner
            </div>
            <div class="row options_alignment">
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher shows enthusiasm when teaching in class
            </div>
            <div class="row options_alignment">
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher shows initiative and flexibility in teaching
            </div>
            <div class="row">
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher is well articulated and shows full knowledge of the
              subject in teaching
            </div>
            <div class="row">
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher speaks loud and clear enough to be heard by the whole
              class
            </div>
            <div class="row">
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="options_menu">
        <div class="input_heading">Professional Practices *</div>
        <div>
          <div class="row">
            <div
              class="options w80"
              style="border: 1px solid transparent"
            ></div>
            <div class="row options_alignment bg_dark_grey">
              <div class="options top_tag">1</div>
              <div class="options top_tag">2</div>
              <div class="options top_tag">3</div>
              <div class="options top_tag">4</div>
              <div class="options top_tag">5</div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher shows professionalism in class
            </div>
            <div class="row options_alignment">
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher shows commitment to teaching the class
            </div>
            <div class="row options_alignment">
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher encourages students to engage in class discussions and ask
              questions
            </div>
            <div class="row">
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher handles criticisms and suggestions professionally
            </div>
            <div class="row">
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">Teacher comes to class on time</div>
            <div class="row">
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b5" id="" class="options" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">Teacher ends class on time</div>
            <div class="row">
              <div class="options">
                <input type="radio" name="b6" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b6" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b6" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b6" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b6" id="" class="options" />
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="options_menu">
        <div class="input_heading">Teaching Methods *</div>
        <div>
          <div class="row">
            <div
              class="options w80"
              style="border: 1px solid transparent"
            ></div>
            <div class="row options_alignment bg_dark_grey">
              <div class="options top_tag">1</div>
              <div class="options top_tag">2</div>
              <div class="options top_tag">3</div>
              <div class="options top_tag">4</div>
              <div class="options top_tag">5</div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="options w80 bg_dark_grey">
            Teacher shows well rounded knowledge over the subject matter
          </div>
          <div class="row options_alignment">
            <div class="options">
              <input type="radio" name="b1" id="" />
            </div>
            <div class="options">
              <input type="radio" name="b1" id="" />
            </div>
            <div class="options">
              <input type="radio" name="b1" id="" />
            </div>
            <div class="options">
              <input type="radio" name="b1" id="" />
            </div>
            <div class="options">
              <input type="radio" name="b1" id="" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="options w80 bg_dark_grey">
            Teacher has organized the lesson conductive for easy understanding
            of stdents
          </div>
          <div class="row options_alignment">
            <div class="options">
              <input type="radio" name="b2" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b2" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b2" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b2" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b2" id="" class="options" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="options w80 bg_dark_grey">Teacher shows dynamism and enthusiasm</div>
          <div class="row">
            <div class="options">
              <input type="radio" name="b3" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b3" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b3" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b3" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b3" id="" class="options" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="options w80 bg_dark_grey">
            Teacher stimulates the crititcal thinking of students
          </div>
          <div class="row">
            <div class="options">
              <input type="radio" name="b4" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b4" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b4" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b4" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b4" id="" class="options" />
            </div>
          </div>
        </div>
        <div class="row">
          <div class="options w80 bg_dark_grey">
            Teacher handles the class environment conductive for learning
          </div>
          <div class="row">
            <div class="options">
              <input type="radio" name="b5" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b5" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b5" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b5" id="" class="options" />
            </div>
            <div class="options">
              <input type="radio" name="b5" id="" class="options" />
            </div>
          </div>
        </div>
      </div>

      <div class="options_menu">
        <div class="input_heading">Disposition Towards Students *</div>
        <div>
          <div class="row">
            <div
              class="options w80"
              style="border: 1px solid transparent"
            ></div>
            <div class="row options_alignment">
              <div class="options top_tag bg_dark_grey">1</div>
              <div class="options top_tag bg_dark_grey">2</div>
              <div class="options top_tag bg_dark_grey">3</div>
              <div class="options top_tag bg_dark_grey">4</div>
              <div class="options top_tag bg_dark_grey">5</div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher believes that students can learn from the class
            </div>
            <div class="row options_alignment">
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
              <div class="options">
                <input type="radio" name="b1" id="" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher shows equal respect to various cultural backgrounds,
              individuals, religion and race
            </div>
            <div class="row options_alignment">
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b2" id="" class="options" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher finds the students strengths as basis for growth and
              weaknesses for opportunities for improvement
            </div>
            <div class="row">
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b3" id="" class="options" />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="options w80 bg_dark_grey">
              Teacher understands the weakness of a student and helps in the
              student's improvement
            </div>
            <div class="row">
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
              <div class="options">
                <input type="radio" name="b4" id="" class="options" />
              </div>
            </div>
          </div>
        </div>
      </div>
      <div>
        <div class="input_heading">
           Comments
        </div>
        <textarea id="w3review" name="w3review" rows="4" cols="170"></textarea>
      </div>
      <div class="button">
        <button class="Submit_button">Submit</button>
      </div>
    </div>
    </form>
</body>
</html>

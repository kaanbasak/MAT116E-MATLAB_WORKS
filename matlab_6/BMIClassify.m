function class = BMIClassify(weight,height)

bmi = 10^4 * weight / (height^2);

if bmi < 18.5
    class = "underweight";
elseif bmi >= 18.5 && bmi < 25
    class = "normal";
elseif bmi >= 25 && bmi < 30
    class = "overweight";
else
    class = "obese";
end

end



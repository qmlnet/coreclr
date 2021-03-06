// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.
using System;
using System.Globalization; //for UnicodeCategory enumeration

/// <summary>
/// Char.IsLetterOrDigit(Char)  
/// Indicates whether the specified Unicode character is categorized as a letter or decimal digit. 
/// </summary>
public class CharIsLetterOrDigit
{
    private static readonly char[] r_decimalDigits = 
    {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
    };

    public static int Main()
    {
        CharIsLetterOrDigit testObj = new CharIsLetterOrDigit();

        TestLibrary.TestFramework.BeginTestCase("for method: Char.IsLetterOrDigit(Char)");
        if (testObj.RunTests())
        {
            TestLibrary.TestFramework.EndTestCase();
            TestLibrary.TestFramework.LogInformation("PASS");
            return 100;
        }
        else
        {
            TestLibrary.TestFramework.EndTestCase();
            TestLibrary.TestFramework.LogInformation("FAIL");
            return 0;
        }
    }

    public bool RunTests()
    {
        bool retVal = true;

        TestLibrary.TestFramework.LogInformation("[Positive]");
        retVal = PosTest1() && retVal;
        retVal = PosTest2() && retVal;
        retVal = PosTest3() && retVal;

        return retVal;
    }
    #region Positive tests
    public bool PosTest1()
    {
        //Generate the character for validate
        char ch = 'a';

        return this.DoTest("PosTest1: Letter character",
                                  "P001", "001", "002", ch, true);
    }

    public bool PosTest2()
    {
        //Generate a non  character for validate
        int index = TestLibrary.Generator.GetInt32(-55) % r_decimalDigits.Length;
        char ch = r_decimalDigits[index];

        return this.DoTest("PosTest2: Decimal digit character.", 
                                  "P002", "003", "004", ch, true);
    }

    public bool PosTest3()
    {
        //Generate a non  character for validate
        char ch = '\n';

        return this.DoTest("PosTest3: Not decimal digit nor letter character.",
                                  "P003", "005", "006", ch, false);
    }
    #endregion

    #region Helper method for positive tests
    private bool DoTest(string testDesc,
                                string testId,
                                string errorNum1,
                                string errorNum2,
                                char ch,
                                bool expectedResult)
    {
        bool retVal = true;
        string errorDesc;

        TestLibrary.TestFramework.BeginScenario(testDesc);
        try
        {
            bool actualResult = char.IsLetterOrDigit(ch);
            if (expectedResult != actualResult)
            {
                if (expectedResult)
                {
                    errorDesc = string.Format("Character \\u{0:x} should belong to letter or decimal digit characters.", (int)ch);
                }
                else
                {
                    errorDesc = string.Format("Character \\u{0:x} does not belong to letter or decimal digit characters.", (int)ch);
                }
                
                TestLibrary.TestFramework.LogError(errorNum1+ " TestId-" + testId, errorDesc);
                retVal = false;
            }
        }
        catch (Exception e)
        {
            errorDesc = "Unexpected exception: " + e;
            errorDesc += string.Format("\nCharacter is \\u{0:x}", ch);
            TestLibrary.TestFramework.LogError(errorNum2 + " TestId-" + testId, errorDesc);
            retVal = false;
        }

        return retVal;
    }
    #endregion
}


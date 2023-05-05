#include "NumberGenerator.h"
#include "gtest/gtest.h"

TEST(ConvertStringToNumberTest, Number3IsReturned)
{
  NumberGenerator numberGenerator;
  int nValue = numberGenerator.ConvertStringToNumber("3");
  EXPECT_TRUE(nValue == 3);
}
class CalcService
  def get(value)
    salary = {
      value: value.to_f,
      discounts: 0
    }

    # faixa 1
    if salary[:value] <= 1045
      salary[:discounts] = range1(salary[:value])
    end

    # faixa2 1.045,01 a R$ 2.089,60
    if salary[:value] > 1045 && salary[:value] <= 2089.60
      rest = salary[:value] - 1045

      salary[:discounts] = range1(1045)
      salary[:discounts] += range2(rest)
    end

    # faixa3 2.089,61 até R$ 3.134,40
    if salary[:value] > 2089.60 && salary[:value] <= 3134.40
      rest = salary[:value] - 2089.60
      salary[:discounts] = range1(1045)
      salary[:discounts] += range2(1044.60)
      salary[:discounts] += range3(rest)
    end

    # faixa4 R$ 3.134,41 até R$ 6.101,06
    if salary[:value] > 3134.40 && salary[:value] <= 6101.06
      rest = salary[:value] - 3134.40
      salary[:discounts] = range1(1045)
      salary[:discounts] += range2(1044.60)
      salary[:discounts] += range3(1044.80)
      salary[:discounts] += range4(rest)
    end

    return  {
      value: salary[:value],
      discounts: salary[:discounts]
    }

  end

  def range1(amount)
    amount * 0.075
  end

  def range2(amount)
    amount * 0.09
  end

  def range3(amount)
    amount * 0.12
  end

  def range4(amount)
    amount * 0.14
  end
end
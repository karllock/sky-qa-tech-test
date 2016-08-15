<?php

class Calculator implements iCalculator {

    protected $stack;
    protected $op;
    protected $result;

    public function add($a, $b) {
        return ($a + $b);
    }

    public function subtract($a, $b) {
        return ($a - $b);
    }

    public function multiply($a, $b) {
        return ($a * $b);
    }
    
    public function divide($a, $b) {
        return ($a / $b);
    }

    public function factorial($a) {
            $factorial = $a--;
            for ($i = $a; $i > 0; $i--) {
                $factorial = $i * $factorial;
            }
            return $factorial;
    }

    public function cubeRoot($a) {
          	$floatResult = pow($a ,1/3);
          	$stringResult = number_format($floatResult,0,'.','');
          	return $stringResult;
    }

    public function decimalToHexadecimal($a) {
            $intValue = intval($a);
            return dechex($intValue);
    }

    public function pressNumber($number) {
        $this->stack[] = $number;
    }

    public function pressAdd() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "+";
    }

    public function pressSubtract() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "-";
    }

    public function pressMultiply() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "*";
    }

    public function pressDivide() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "/";
    }

    public function pressFactorial() {
        if(count($this->stack) > 1) {
                $this->evaluateStack();
            }
     	$this->op = "!";
    }

    public function pressCubeRoot() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
     	$this->op = "^";
    }

    public function pressDecToHex() {
        if(count($this->stack) > 1) {
        	$this->evaluateStack();
        }
     	$this->op = "hexadecimal";
    }

    public function pressEquals() {
        return $this->evaluateStack();
    }

    protected function evaluateStack() {
        switch($this->op) {
            case "+":
                $result = $this->add(array_shift($this->stack), array_shift($this->stack));
                break;
            case "-":
                $result = $this->subtract(array_shift($this->stack), array_shift($this->stack));
                break;
            case "*":
                $result = $this->multiply(array_shift($this->stack), array_shift($this->stack));
                break;
            case "/":
                $result = $this->divide(array_shift($this->stack), array_shift($this->stack));
                break;
            case "!":
                $result = $this->factorial(array_shift($this->stack), array_shift($this->stack));
                break;
            case "^":
                $result = $this->cubeRoot(array_shift($this->stack), array_shift($this->stack));
                break;
            case "hexadecimal":
                $result = $this->decimalToHexadecimal(array_shift($this->stack), array_shift($this->stack));
                break;
        }
        $this->clearStack();
        $this->stack[] = $result;
    }

    protected function clearStack() {
        $this->stack = array();
    }

    public function readScreen() {
        $value = array_shift($this->stack);
        return $value;
    }
}

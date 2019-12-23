How do I get the function name inside a function in PHP? <https://stackoverflow.com/questions/1006248/how-do-i-get-the-function-name-inside-a-function-in-php>

```php
class Test {
    function MethodA(){
        echo __FUNCTION__;
    }
}
```
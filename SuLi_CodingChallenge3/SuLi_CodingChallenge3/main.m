//
//  main.m
//  SuLi_CodingChallenge3
//
//  Created by Su Li on 2/1/18.
//  Copyright © 2018 Su Li. All rights reserved.
//

#import <Foundation/Foundation.h>
void challenge1(){
    int counter = 1;
    for(int i = 0; i<100; i+=2){
        NSLog(@"Run %i, current numer: %i",counter,i);
        counter++;
    }
}
int challenge2(int num) {
    if (num <= 1)
        return 1;
    else
        return num * challenge2(num - 1);
}
void challenge3(int guess){
    int input = 0;
    int tries = 5;
    NSLog(@"I'm thinking of a number between 1 and 10. You've got 5 tries to guess what it is!");
    NSLog(@"Please enter your guess: ");
    scanf("%d", &input);
    while(input != guess && tries > 0){
        tries--;
        if(tries == 0){
            NSLog(@"You have ran out of tries!");
            break;
        }else{
            NSLog(@"I'm sorry, that's not correct. \nPlease enter your guess again(tries left: %i): ",tries);
            scanf("%d", &input);
        }
    }
    if(input == guess){
        NSLog(@"Congrats! You guessed it!");
    }

    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        challenge1();
        NSLog(@"\n");
        int factorial = 10;
        NSLog(@"Factorial of %i is %i",factorial, challenge2(factorial));
        NSLog(@"\n");
       challenge3(arc4random_uniform(10));
    }
    return 0;
}

function[accuracy] = run(N)

training = 'images/train';

train(training,N);

testing = 'images/test';

accuracy = test(testing);

end
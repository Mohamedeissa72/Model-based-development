function output =  outerFunction(varargin)
function result = innerFunction (x,y)

result = x+y;
fprintf ('result from innerFunction :%d\n',result)
end

output =innerFunction(varargin{1} , varargin{2});
end
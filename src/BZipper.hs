module BZipper (
  isAbove,
  getLeaves,
  filterLeaves,
  fmap,
  return,
  (>>=),
  ) where

--A generic zipper based btree

data Node a = Node {
  nodeValue :: a, 
  leaves :: [Node a] 
  }
            deriving (Show, Eq)

--A tree zipper has a link to the zipped Tree and 
--a link to the tree zipper above it.
type Tree a = [Node a]

isAbove f xs = fmap nodeValue (filter (f . nodeValue) xs)

getLeaves [] = []
getLeaves xs@(x:_) = fmap (:xs) (leaves x)

filterLeaves f xs = (filter (f . nodeValue . head)) (getLeaves xs)

getParent [xs] = Nothing
getParent (x:xs) = Just xs

getRoot [x] = [x]
getRoot (_:xs) = (getRoot xs)

mapTree f xs  = [fmap f (head (getRoot xs))]

instance Functor Node where
  fmap f (Node x xs) = Node (f x) (fmap (fmap f) xs)

instance Monad Node where
  return x = Node x []
  (>>=) (Node x xs) f = let 
    (Node v vs) = f x
    rc = map (>>= f) xs
    in Node v (vs ++ rc)
  


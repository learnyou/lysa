Introduction
============

This book is about Commutative Algebra - a fun area of math. That
statement is a bit redundant - is there an area of math that isn’t fun?
Of course not! Now let’s get started!

> Everything is a toy if you play with it.
>
> – Chris Pratt, Parks and Recreation

So what is Commutative Algebra?
-------------------------------

Simply put, Commutative Algebra is the study of things called
i<span>commutative rings</span>. There are two words there,
“commutative,” and “ring.” Before we can get to those words, you have to
understand some other words first.

### Sets and elements

Imagine a bunch of things. These things all have some property in
common. Congratulations! You just intuited a i<span>set</span>! See,
you’re getting this!

For example, look at i<span>integers</span>. You may have heard of
“whole numbers,” numbers that don’t have a decimal point. Whole numbers
are $\{0, 1, 2, 3,
\ldots\}$. Integers are the same, but they include negative numbers. The
integers are $\{\ldots, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, \ldots\}$

#### Notation

Did you see that I cleverly tricked you into understanding some notation
there? I’m also guessing you understood it! The notation I used is the
brace notation for sets, as well as set extrapolation. Those words are a
bit confusing.

The “brace notation” simply means I use curly braces (these things -
$\{$ and $\}$) to express a set. Everything between those two braces is
in the set. I also used commas to differentiate between the various
things in the set. See, this math stuff isn’t hard!

I also used this thing called “assumed extrapolation.” That was what you
did when you saw the ellipsis (the three dots - “$\ldots$”). See, you’re
getting this stuff without even thinking about it! The ellipsis
basically means “I think you’re smart enough to figure out what I’m
going to put here.” And you are! Just look at how far you’ve gotten all
on your own!

My Calculus teacher in high school was rather emphatic that mathematical
notation is all about being lazy. That idea stuck with me. I think you’ll learn
very quickly is that mathematicians are lazy. Really lazy.  We are so lazy that
we can’t even bear to type the word “integer.” So, instead, we use letters to
express these words. We use a large fancy Z, instead of writing “integers.” We
really are that pretentious. So, whenever you see ${\mathbb{Z}}$, you can think
“oh, he’s just a lazy jerk who can’t be bothered to type the word ‘integers’.”
And you’ll probably be right.

#### Alright, back to the boring stuff

Well, math isn’t boring! I almost got you there!

So now we have a set of things. “Thing” is a bit of a generic term, and
we sometimes can get confused if we use it too much. So, when we talk
about a thing in a set, we usually use the word i<span>element</span>.
Don’t be scared! You’ll pick up on the jargon eventually, and you’ll be
speaking like your incomprehensible math professor!

Alright. Now, imagine that you can take an element in the set, do
something to it, and then get another element in the set? That’s called
a “unary operator.” “Unary” means that it the operation needs one
element from the set to do it’s job.

Take negation for example. Imagine the set of integers. Well, you can
take $2$, and apply the “negation” operation to it, and get $-2$, which
is still an integer. You can even take $-2$, and negate it, and get $2$
back.

When an operator takes any element from a set, and gives you back
another element from the set, we like to say that the set is
i<span>closed</span> under the operation. In this example,
${\mathbb{Z}}$ is closed under negation. This is another instance of
mathematicians being lazy jackasses. We like to invent words to make
ourselves seem smarter, when, really, we’re just like everyone else,
minus the social skills.

### Speaking of minus...

You’ve probably heard the word “minus” before. Imagine you have five
blocks, and then you take two of them away. You now have three blocks.
Congratulations, you just i<span>subtracted</span>!

Again, us mathematicians are too lazy to say “when you have five, and
you take away two, you get three.” So, instead, we say “five minus two
equals three.” But even that is too verbose. We reduce all those words
into symbols, and write

$$5 - 2 = 3$$

In this instance, $-$ and $=$ are called “infix operators.” That means
they are <span>fix</span>ed <span>in</span>between the two things on
which they operate.

#### Exercise

Try subtracting some integers from each other, and confirm that
${\mathbb{Z}}$ is closed under subtraction.

#### Hey, guess what!

You remember how $-$ and $=$ are infix operators? (I hope you remember,
it was only one paragraph ago!) Well, they operate on two things, and
produce a third thing. You know what these are called? i<span>Binary
operators</span>. See, you’re getting this!

#### Notation

I’m going to try to introduce some notation here. We won’t use it very
much in the near future, but it will be useful later on. Don’t worry if
you don’t understand it yet, you’ll undoubtedly pick it up as we move
along.

Let’s look at $-$ in the context of ${\mathbb{Z}}$. $-$ is a binary
operator - it takes two integers, and gives you another integer. Well,
we’re going to be pretentious, and write that like

$$(-) : {\mathbb{Z}}\to {\mathbb{Z}}\to {\mathbb{Z}}$$

This is called “Curry” notation, named after a mathematician named
Haskell Curry. I write it in that flattened notation, because it’s
simpler.

This Curry notation is “left-associative.” You don’t need to know what
that means at the moment, intuitively. It really only matters when we’re
talking about notation. In the context of notation, that just means we
should be writing

$$(-) : {\mathbb{Z}}\to ({\mathbb{Z}}\to {\mathbb{Z}})$$

But again, mathematicians are lazy, and like to confuse people, so we
remove the parentheses where we don’t absolutely need them.

You might ask, “if we’re removing parentheses that we don’t absolutely
need, then why did you put parentheses around $-$?”

See, I knew you were smart! Asking all the right questions. I put the
parentheses around $(-)$ to specify that it’s an infix operator. If it
was used as a i<span>prefix</span> operator, I wouldn’t use parentheses.
“Prefix operator” just means that the operator symbol is, by convention,
placed before the things it needs to do its job.

Let’s look at the negation operator, for an example of a prefix
operator. Most people like to use $-$ as a negation operator. I find
that rather confusing, because it’s also used for subtraction, which is
a binary infix operator. Mathematicians are stupid sometimes, too!

Instead, I’m going to write ${\mathrm{neg}{\hspace{2pt}}}m$, to mean “m,
negated.” ${\mathrm{neg}{\hspace{2pt}}}$ is a prefix operator. It’s put
$before$ the things that it uses to do its job.

We would write ${\mathrm{neg}{\hspace{2pt}}}$’s i<span>type
signature</span> (the Curry thing I talked about earlier) as

$${\mathrm{neg}{\hspace{2pt}}}: {\mathbb{Z}}\to {\mathbb{Z}}$$

You might be tempted to write

$${\mathrm{neg}{\hspace{2pt}}}1 = -1$$

but that doesn’t solve the problem that we just tried to solve, because
you’re still using $-$ for two separate things. Again, we’re going to be
lazy. ${\mathrm{neg}{\hspace{2pt}}}1$ is just too cumbersome to type.
Instead, we’re going to write it $` 1$ (pronounce it “tick one”).
${\mathrm{neg}{\hspace{2pt}}}$ can now be written as

$${\mathrm{neg}{\hspace{2pt}}}x = ` x$$

But guess what? We can be even lazier! It’s implied that $`$ is a unary
operator. So, we will write

$${\mathrm{neg}{\hspace{2pt}}}= `$$

Mathematics is nothing more than sophisticated laziness.

When we write it that way, it seems as if ${\mathrm{neg}{\hspace{2pt}}}$
is completely unnecessary. Well, you’re right! Guess what? I was
tricking you again. I just tricked you into learning the concept of
${\eta}$-reduction!

${\eta}$ is the Greek letter “eta.” It’s pronounced like the word
“eight,” but with an “uh” sound at the end.

${\eta}$-reduction just means that you write an equation with as few
symbols as possible. It’s a bit more complicated than that, but you’ll
pick it up later!

#### History lesson

The ancient Greeks were too dumb to understand what eight is, so every
time someone brought it up, they would say “uh” immediately afterwords.
The sound “eight-uh” became so common, that they decided to make it a
letter. The Greeks’ poor comprehension of mathematics remains to this
day, and is largely the reason for their current financial crisis.

You will also notice that Greek letters are frequently used in physics.
This is the physicists’ way of conceding that they actually have no idea
what they are talking about, and pleading for help from the
mathematicians.

### Groups

So, a group is actually pretty simple. When you have a set, and there is
a binary operation, you have a group. There are a few other things that
need to happen:

1.  The set must be closed under the binary operation. We’ve discussed
    the set ${\mathbb{Z}}$, with the binary operation $-$. This property
    means that we have to be able to subtract an integer from another
    integer, and still get an integer.

    If you did the exercise in §1.1.3.1 (you i<span>did</span> do it,
    right?), then you’ve already proven that ${\mathbb{Z}}$ is closed
    under $-$.

    If you are a rebel, and didn’t do the exercise, do it now. This is
    what you get for putting things off!

2.  The binary operation must be i<span>associative</span>. That just
    means that you can group parentheses however you damn well please.
    We have to be able to write

    $$(a - b) - c = a - (b - c)$$

    Oh wait! That isn’t true! So, ${\mathbb{Z}}$, together with $-$, is
    not a group! Instead, let’s look at addition, the opposite of
    subtraction. We use $+$ as the infix operator for addition.

    $$(a + b) + c = a + (b + c)$$

    Phew! There we go, now let’s move on.

3.  There is some identity element for your binary operation.

    -   Pick some random element in your set, and give it to your binary
        operator.

    -   Remember, binary operators need two elements to do their job!
        You aren’t trying to cheat, are you?

    -   Alright, the identity element is an element in your set, when
        you supply the binary operator with some random element, as well
        as the identity element, the operator spits out the same random
        element that you picked.

        This identity element has to be the identity for the entire set.
        If we had to find a different identity element for every random
        element in our set, it would defeat the purpose of the identity
        element.

    With the integers as your set, along with addition as your binary
    operator, the identity element is $0$. That is, $a + 0 = a$, and
    $0 + a = a$.

4.  Every element in your set has an inverse element. That basically
    means

    -   Take a random element in your set.

    -   Give it to your binary operator.

    -   There needs to be another element in your set, that when you
        give it to the binary operator, the binary operator spits out
        your identity element.

    Pretty cool, huh?

    So, let’s look at ${\mathbb{Z}}$ with $+$. Let’s take some random
    element in ${\mathbb{Z}}$, and call it $x$. There needs to be some
    element, let’s call it $y$, that $x + y =
      0$. Can you guess what it is?

    If you guessed $` x$, you’re absolutely right! You’re really picking
    this up quickly! So, $23 + `23 = 0$.

So, we’ve just shown that ${\mathbb{Z}}$, along with $+$, is a group!
That’s pretty cool.

We’re mathematicians (yes, you too, silly!), so we’re going to be lazy.
Instead of writing “${\mathbb{Z}}$, along with $+$,” we’re going to
write $({\mathbb{Z}}, +)$.

In general, I will use a normal capital letter for the set, and a back 
(this character $\to {\hspace{3pt}}{\backsim}$) as the operation. When I
talk about a group $(A,
{\backsim})$, I’m talking about a set $A$, with the operation
${\backsim}$.

It seems to be the convention in other texts to use $0$ as the identity
element for Abelian groups, even when your set has nothing to do with
numbers. I don’t like this. So, instead, I’m going to write
$I_{\backsim}$. In the long run, this is far less confusing than using
$0$ wrecklessly.

#### More notation (great...)

Remember when I said that $23 + `23 = 0$? Well, adding a negative
integer is the same as subtracting an integer! In the interest of being
lazy, we can write $23
- 23 = 0$.

#### A small note

I think that the unary $-$ notation was invented because it was
convenient to think of negative numbers as zero minus whatever your
number is.

When we’re dealing with rings, the notion of “zero minus whatever”
becomes really confusing and cumbersome. Therefore, throughout the rest
of the book, I will disregard subtraction entirely, and use the backtick
notation whenever I need to express the concept.

So, to summarize, disregard the previous section.

### Abelian groups

An Abelian group is just like a normal group, except your binary
operation must be i<span>commutative</span>.

Hey! We just found the first word we set out to define!

Alright, that paragraph is over with, calm down.

“Commutative” just means that it doesn’t matter in what order you give
things to your group’s binary operator.

So, for $({\mathbb{Z}}, +)$, it’s obvious that $a + b = b + a$. So,
integers are an Abelian group!

The idea of abstract algebra is to think beyond our preconceived
notions. So, I’m going to be mean, and make you think of some arbitrary
group $(A,
{\backsim})$. With $(A, {\backsim})$, it must be true that
$a {\backsim}b = b
{\backsim}a$. See, I told you math is easy!

These Abelian groups are also called “commutative groups.”

### Rings

1.  So, take your Abelian group.

2.  Now, add another binary operation, under which your group is closed.

3.  That’s it. What, did you think math was complicated? What have I
    been telling you this whole time? Jeez.

So, do that, and you get a ring. As usual, you have to wade through some
more horseshit to make sure that you actually have a ring, and not some
weird perverted topology thing.

In addition to all of the rules with the Abelian groups, you have to
satisfy some more rules. Jeez, it’s like dealing with your parents after
they found your pot stash. Rules, rules, rules.

1.  The second binary operation has to be associative. I already
    explained what that word means. I’m a mathematician, and I’m lazy,
    so I’m not going to explain it again.

2.  There is an identity element for your second binary operator.

    Let’s look at $({\mathbb{Z}}, +)$. Let’s pick multiplication as our
    second operator. You remember multiplication, right? We use $\times$
    as the symbol for multiplication.

    $$4 \times 3 = 4 + 4 + 4$$ $$3 \times 4 = 3 + 3 + 3 + 3$$

    Basically, you just add the first number to itself a number of
    times, given by the second number.

    Let’s look at $({\mathbb{Z}}, +)$, with $\times$ as the second
    binary operation. With $({\mathbb{Z}}, +)$ and $\times$, $1$ is the
    identity element.

    Now, let’s try to think more abstractly. Let’s consider some
    arbitrary Abelian group. $(A, {\backsim})$. Let’s assume there’s
    another binary operator on $A$, and we’ll call it ${\curlyvee}$.
    This just says that there needs to be another identity element for
    ${\curlyvee}$, and we’ll call it $I_{\curlyvee}$. I told you this
    isn’t hard!

    With regards to $(A, {\backsim})$, along with ${\curlyvee}$, we need
    to be able to pick some element from $A$, let’s call it $a$. This
    has to be true:

    $$a {\curlyvee}I_{\curlyvee}= a$$ $$I_{\curlyvee}{\curlyvee}a = a$$

3.  Your second binary operator must i<span>distribute</span> over the
    first one.

    With $(A, {\backsim})$, along with ${\curlyvee}$, this must be true

    $$a {\curlyvee}(b {\backsim}c) = (a {\curlyvee}b) {\backsim}(a {\curlyvee}c)$$
    $$(b {\backsim}c) {\curlyvee}a = (b {\curlyvee}a) {\backsim}(c {\curlyvee}a)$$

    where $a$, $b$, and $c$ are elements of $A$.

#### Notation

-   I’m tired of writing “the ring $(A, {\backsim})$, along with the
    second binary operation ${\curlyvee}$.” It’s also 5:30 AM. So,
    instead, I’m going to write $(A, {\backsim},
      {\curlyvee})$.

-   Writing “$a$, $b$, and $c$ are elements of $A$” is proving to be
    cumbersome. Instead, I’ll use the remarkably standard notation
    $a, b, c \in A$.

I’m trying to gently introduce you to the world of notation. How’s it
working?

#### Exercise

In the last property, I didn’t give any examples of distributivity in
the ring ${\mathbb{Z}}$. Write the analog of the last property with
$({\mathbb{Z}}, +, \times)$.

### Commutative rings

A careful reader would note that I didn’t specify that ${\curlyvee}$ had
to be commutative. That is, in the context of
$(A, {\backsim}, {\curlyvee})$, for $a, b \in A$, it isn’t necessary
that $a {\curlyvee}b = b {\curlyvee}a$.

The only time this needs to be true is if either $a$ or $b$ is
$I_{\curlyvee}$.

<span>If</span> $a {\curlyvee}b = b {\curlyvee}a$, for all $a, b \in A$,
then you have a i<span>commutative ring</span>! If not, then
$(A, {\backsim}, {\curlyvee})$ is an ordinary ring.

Yay! After 500 lines of LaTeX, we finally got to the point!

#### Notation

Since this is a book about commutative rings, it wouldn’t make sense to
have to specify that each ring that we’re dealing with is commutative,
would it? So, from here on out, assume that all rings are commutative,
unless I tell you otherwise.

On the topic, it’s a bit cumbersome to have to write
$(A, {\backsim}, {\curlyvee})$ when I want to discuss an ordinary
commutative ring. So, instead, I’m going to rely on you to assume that
any set $A$ that I talk about from now on is a commutative ring.

If I tell you that $A$ is not a commutative ring, please do not take the
previous paragraph to assume that I’m lying, and that $A$ really is a
commutative ring.

Am I smart enough to read this?
-------------------------------

> Everybody is a genius. But if you judge a fish by its ability to climb
> a tree, it will live its whole life believing that it is stupid.
>
> – Albert Einstein

This book is intended for anyone who has an interest in math. You don’t
have to have a PhD to understand this stuff. It’s actually pretty
simple.

As I point out many times later on, mathematicians are really lazy. We
like to make ourselves sound smarter by expressing simple ideas in
incomprehensible notation.

I guarantee, by the end of reading this, you too can act like a
pretentious jackass, and start writing things like

$$\forall a \in R,{,\hspace{1pt}}\exists (-a) \in R \mid a + (-a) = 0$$

Albert Einstein is full of great quotes. Another one of my favorites is
“If you can’t explain it to a six year old, you don’t understand it
yourself.” That’s the mindset I took when writing this. How can I
express these simple concepts simply?

This book is (hopefully) written so that a six year old could understand
it. That said, if there are any six year olds reading this, please
ignore the cursing.

It would definitely help if you have elementary school mathematics under
your belt. Even that is not entirely required. As long as you can employ
logic, and can read English fluently, you shouldn’t have any trouble
reading this!

Introduction
============

This book is about Commutative Algebra - a fun area of math. That
statement is a bit redundant - is there an area of math that isn’t fun?
Of course not! Now let’s get started!

> Everything is a toy if you play with it.
>
> – Chris Pratt, Parks and Recreation

So what is Commutative Algebra?
-------------------------------

Simply put, Commutative Algebra is the study of things called
i<span>commutative rings</span>. There are two words there,
“commutative,” and “ring.” Before we can get to those words, you have to
understand some other words first.

### Sets and elements

Imagine a bunch of things. These things all have some property in
common. Congratulations! You just intuited a i<span>set</span>! See,
you’re getting this!

For example, look at i<span>integers</span>. You may have heard of
“whole numbers,” numbers that don’t have a decimal point. Whole numbers
are $\{0, 1, 2, 3,
\ldots\}$. Integers are the same, but they include negative numbers. The
integers are $\{\ldots, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, \ldots\}$

#### Notation

Did you see that I cleverly tricked you into understanding some notation
there? I’m also guessing you understood it! The notation I used is the
brace notation for sets, as well as set extrapolation. Those words are a
bit confusing.

The “brace notation” simply means I use curly braces (these things -
$\{$ and $\}$) to express a set. Everything between those two braces is
in the set. I also used commas to differentiate between the various
things in the set. See, this math stuff isn’t hard!

I also used this thing called “assumed extrapolation.” That was what you
did when you saw the ellipsis (the three dots - “$\ldots$”). See, you’re
getting this stuff without even thinking about it! The ellipsis
basically means “I think you’re smart enough to figure out what I’m
going to put here.” And you are! Just look at how far you’ve gotten all
on your own!

My Calculus teacher in high school was rather emphatic that mathematical
notation is all about being lazy. That idea stuck with me. I think
you’ll learn very quickly is that mathematicians are lazy. Really lazy.
We are so lazy that we can’t even bear to type the word “integer.” So,
instead, we use letters to express these words. We use a large fancy Z,
instead of writing “integers.” We really are that pretentious. So,
whenever you see ${\mathbb{Z}}$, you can think “oh, he’s just a lazy
jackass who can’t be bothered to type the word ‘integers’.” And you’ll
probably be right.

#### Alright, back to the boring stuff

Well, math isn’t boring! I almost got you there!

So now we have a set of things. “Thing” is a bit of a generic term, and
we sometimes can get confused if we use it too much. So, when we talk
about a thing in a set, we usually use the word i<span>element</span>.
Don’t be scared! You’ll pick up on the jargon eventually, and you’ll be
speaking like your incomprehensible math professor!

Alright. Now, imagine that you can take an element in the set, do
something to it, and then get another element in the set? That’s called
a “unary operator.” “Unary” means that it the operation needs one
element from the set to do it’s job.

Take negation for example. Imagine the set of integers. Well, you can
take $2$, and apply the “negation” operation to it, and get $-2$, which
is still an integer. You can even take $-2$, and negate it, and get $2$
back.

When an operator takes any element from a set, and gives you back
another element from the set, we like to say that the set is
i<span>closed</span> under the operation. In this example,
${\mathbb{Z}}$ is closed under negation. This is another instance of
mathematicians being lazy jackasses. We like to invent words to make
ourselves seem smarter, when, really, we’re just like everyone else,
minus the social skills.

### Speaking of minus...

You’ve probably heard the word “minus” before. Imagine you have five
blocks, and then you take two of them away. You now have three blocks.
Congratulations, you just i<span>subtracted</span>!

Again, us mathematicians are too lazy to say “when you have five, and
you take away two, you get three.” So, instead, we say “five minus two
equals three.” But even that is too verbose. We reduce all those words
into symbols, and write

$$5 - 2 = 3$$

In this instance, $-$ and $=$ are called “infix operators.” That means
they are <span>fix</span>ed <span>in</span>between the two things on
which they operate.

#### Exercise

Try subtracting some integers from each other, and confirm that
${\mathbb{Z}}$ is closed under subtraction.

#### Hey, guess what!

You remember how $-$ and $=$ are infix operators? (I hope you remember,
it was only one paragraph ago!) Well, they operate on two things, and
produce a third thing. You know what these are called? i<span>Binary
operators</span>. See, you’re getting this!

#### Notation

I’m going to try to introduce some notation here. We won’t use it very
much in the near future, but it will be useful later on. Don’t worry if
you don’t understand it yet, you’ll undoubtedly pick it up as we move
along.

Let’s look at $-$ in the context of ${\mathbb{Z}}$. $-$ is a binary
operator - it takes two integers, and gives you another integer. Well,
we’re going to be pretentious, and write that like

$$(-) : {\mathbb{Z}}\to {\mathbb{Z}}\to {\mathbb{Z}}$$

This is called “Curry” notation, named after a mathematician named
Haskell Curry. I write it in that flattened notation, because it’s
simpler.

This Curry notation is “left-associative.” You don’t need to know what
that means at the moment, intuitively. It really only matters when we’re
talking about notation. In the context of notation, that just means we
should be writing

$$(-) : {\mathbb{Z}}\to ({\mathbb{Z}}\to {\mathbb{Z}})$$

But again, mathematicians are lazy, and like to confuse people, so we
remove the parentheses where we don’t absolutely need them.

You might ask, “if we’re removing parentheses that we don’t absolutely
need, then why did you put parentheses around $-$?”

See, I knew you were smart! Asking all the right questions. I put the
parentheses around $(-)$ to specify that it’s an infix operator. If it
was used as a i<span>prefix</span> operator, I wouldn’t use parentheses.
“Prefix operator” just means that the operator symbol is, by convention,
placed before the things it needs to do its job.

Let’s look at the negation operator, for an example of a prefix
operator. Most people like to use $-$ as a negation operator. I find
that rather confusing, because it’s also used for subtraction, which is
a binary infix operator. Mathematicians are stupid sometimes, too!

Instead, I’m going to write ${\mathrm{neg}{\hspace{2pt}}}m$, to mean “m,
negated.” ${\mathrm{neg}{\hspace{2pt}}}$ is a prefix operator. It’s put
$before$ the things that it uses to do its job.

We would write ${\mathrm{neg}{\hspace{2pt}}}$’s i<span>type
signature</span> (the Curry thing I talked about earlier) as

$${\mathrm{neg}{\hspace{2pt}}}: {\mathbb{Z}}\to {\mathbb{Z}}$$

You might be tempted to write

$${\mathrm{neg}{\hspace{2pt}}}1 = -1$$

but that doesn’t solve the problem that we just tried to solve, because
you’re still using $-$ for two separate things. Again, we’re going to be
lazy. ${\mathrm{neg}{\hspace{2pt}}}1$ is just too cumbersome to type.
Instead, we’re going to write it $` 1$ (pronounce it “tick one”).
${\mathrm{neg}{\hspace{2pt}}}$ can now be written as

$${\mathrm{neg}{\hspace{2pt}}}x = ` x$$

But guess what? We can be even lazier! It’s implied that $`$ is a unary
operator. So, we will write

$${\mathrm{neg}{\hspace{2pt}}}= `$$

Mathematics is nothing more than sophisticated laziness.

When we write it that way, it seems as if ${\mathrm{neg}{\hspace{2pt}}}$
is completely unnecessary. Well, you’re right! Guess what? I was
tricking you again. I just tricked you into learning the concept of
${\eta}$-reduction!

${\eta}$ is the Greek letter “eta.” It’s pronounced like the word
“eight,” but with an “uh” sound at the end.

${\eta}$-reduction just means that you write an equation with as few
symbols as possible. It’s a bit more complicated than that, but you’ll
pick it up later!

#### History lesson

The ancient Greeks were too dumb to understand what eight is, so every
time someone brought it up, they would say “uh” immediately afterwords.
The sound “eight-uh” became so common, that they decided to make it a
letter. The Greeks’ poor comprehension of mathematics remains to this
day, and is largely the reason for their current financial crisis.

You will also notice that Greek letters are frequently used in physics.
This is the physicists’ way of conceding that they actually have no idea
what they are talking about, and pleading for help from the
mathematicians.

### Groups

So, a group is actually pretty simple. When you have a set, and there is
a binary operation, you have a group. There are a few other things that
need to happen:

1.  The set must be closed under the binary operation. We’ve discussed
    the set ${\mathbb{Z}}$, with the binary operation $-$. This property
    means that we have to be able to subtract an integer from another
    integer, and still get an integer.

    If you did the exercise in §1.1.3.1 (you i<span>did</span> do it,
    right?), then you’ve already proven that ${\mathbb{Z}}$ is closed
    under $-$.

    If you are a rebel, and didn’t do the exercise, do it now. This is
    what you get for putting things off!

2.  The binary operation must be i<span>associative</span>. That just
    means that you can group parentheses however you damn well please.
    We have to be able to write

    $$(a - b) - c = a - (b - c)$$

    Oh wait! That isn’t true! So, ${\mathbb{Z}}$, together with $-$, is
    not a group! Instead, let’s look at addition, the opposite of
    subtraction. We use $+$ as the infix operator for addition.

    $$(a + b) + c = a + (b + c)$$

    Phew! There we go, now let’s move on.

3.  There is some identity element for your binary operation.

    -   Pick some random element in your set, and give it to your binary
        operator.

    -   Remember, binary operators need two elements to do their job!
        You aren’t trying to cheat, are you?

    -   Alright, the identity element is an element in your set, when
        you supply the binary operator with some random element, as well
        as the identity element, the operator spits out the same random
        element that you picked.

        This identity element has to be the identity for the entire set.
        If we had to find a different identity element for every random
        element in our set, it would defeat the purpose of the identity
        element.

    With the integers as your set, along with addition as your binary
    operator, the identity element is $0$. That is, $a + 0 = a$, and
    $0 + a = a$.

4.  Every element in your set has an inverse element. That basically
    means

    -   Take a random element in your set.

    -   Give it to your binary operator.

    -   There needs to be another element in your set, that when you
        give it to the binary operator, the binary operator spits out
        your identity element.

    Pretty cool, huh?

    So, let’s look at ${\mathbb{Z}}$ with $+$. Let’s take some random
    element in ${\mathbb{Z}}$, and call it $x$. There needs to be some
    element, let’s call it $y$, that $x + y =
      0$. Can you guess what it is?

    If you guessed $` x$, you’re absolutely right! You’re really picking
    this up quickly! So, $23 + `23 = 0$.

So, we’ve just shown that ${\mathbb{Z}}$, along with $+$, is a group!
That’s pretty cool.

We’re mathematicians (yes, you too, silly!), so we’re going to be lazy.
Instead of writing “${\mathbb{Z}}$, along with $+$,” we’re going to
write $({\mathbb{Z}}, +)$.

In general, I will use a normal capital letter for the set, and a back 
(this character $\to {\hspace{3pt}}{\backsim}$) as the operation. When I
talk about a group $(A,
{\backsim})$, I’m talking about a set $A$, with the operation
${\backsim}$.

It seems to be the convention in other texts to use $0$ as the identity
element for Abelian groups, even when your set has nothing to do with
numbers. I don’t like this. So, instead, I’m going to write
$I_{\backsim}$. In the long run, this is far less confusing than using
$0$ wrecklessly.

#### More notation (great...)

Remember when I said that $23 + `23 = 0$? Well, adding a negative
integer is the same as subtracting an integer! In the interest of being
lazy, we can write $23
- 23 = 0$.

#### A small note

I think that the unary $-$ notation was invented because it was
convenient to think of negative numbers as zero minus whatever your
number is.

When we’re dealing with rings, the notion of “zero minus whatever”
becomes really confusing and cumbersome. Therefore, throughout the rest
of the book, I will disregard subtraction entirely, and use the backtick
notation whenever I need to express the concept.

So, to summarize, disregard the previous section.

### Abelian groups

An Abelian group is just like a normal group, except your binary
operation must be i<span>commutative</span>.

Hey! We just found the first word we set out to define!

Alright, that paragraph is over with, calm down.

“Commutative” just means that it doesn’t matter in what order you give
things to your group’s binary operator.

So, for $({\mathbb{Z}}, +)$, it’s obvious that $a + b = b + a$. So,
integers are an Abelian group!

The idea of abstract algebra is to think beyond our preconceived
notions. So, I’m going to be mean, and make you think of some arbitrary
group $(A,
{\backsim})$. With $(A, {\backsim})$, it must be true that
$a {\backsim}b = b
{\backsim}a$. See, I told you math is easy!

These Abelian groups are also called “commutative groups.”

### Rings

1.  So, take your Abelian group.

2.  Now, add another binary operation, under which your group is closed.

3.  That’s it. What, did you think math was complicated? What have I
    been telling you this whole time? Jeez.

So, do that, and you get a ring. As usual, you have to wade through some
more horseshit to make sure that you actually have a ring, and not some
weird perverted topology thing.

In addition to all of the rules with the Abelian groups, you have to
satisfy some more rules. Jeez, it’s like dealing with your parents after
they found your pot stash. Rules, rules, rules.

1.  The second binary operation has to be associative. I already
    explained what that word means. I’m a mathematician, and I’m lazy,
    so I’m not going to explain it again.

2.  There is an identity element for your second binary operator.

    Let’s look at $({\mathbb{Z}}, +)$. Let’s pick multiplication as our
    second operator. You remember multiplication, right? We use $\times$
    as the symbol for multiplication.

    $$4 \times 3 = 4 + 4 + 4$$ $$3 \times 4 = 3 + 3 + 3 + 3$$

    Basically, you just add the first number to itself a number of
    times, given by the second number.

    Let’s look at $({\mathbb{Z}}, +)$, with $\times$ as the second
    binary operation. With $({\mathbb{Z}}, +)$ and $\times$, $1$ is the
    identity element.

    Now, let’s try to think more abstractly. Let’s consider some
    arbitrary Abelian group. $(A, {\backsim})$. Let’s assume there’s
    another binary operator on $A$, and we’ll call it ${\curlyvee}$.
    This just says that there needs to be another identity element for
    ${\curlyvee}$, and we’ll call it $I_{\curlyvee}$. I told you this
    isn’t hard!

    With regards to $(A, {\backsim})$, along with ${\curlyvee}$, we need
    to be able to pick some element from $A$, let’s call it $a$. This
    has to be true:

    $$a {\curlyvee}I_{\curlyvee}= a$$ $$I_{\curlyvee}{\curlyvee}a = a$$

3.  Your second binary operator must i<span>distribute</span> over the
    first one.

    With $(A, {\backsim})$, along with ${\curlyvee}$, this must be true

    $$a {\curlyvee}(b {\backsim}c) = (a {\curlyvee}b) {\backsim}(a {\curlyvee}c)$$
    $$(b {\backsim}c) {\curlyvee}a = (b {\curlyvee}a) {\backsim}(c {\curlyvee}a)$$

    where $a$, $b$, and $c$ are elements of $A$.

#### Notation

-   I’m tired of writing “the ring $(A, {\backsim})$, along with the
    second binary operation ${\curlyvee}$.” It’s also 5:30 AM. So,
    instead, I’m going to write $(A, {\backsim},
      {\curlyvee})$.

-   Writing “$a$, $b$, and $c$ are elements of $A$” is proving to be
    cumbersome. Instead, I’ll use the remarkably standard notation
    $a, b, c \in A$.

I’m trying to gently introduce you to the world of notation. How’s it
working?

#### Exercise

In the last property, I didn’t give any examples of distributivity in
the ring ${\mathbb{Z}}$. Write the analog of the last property with
$({\mathbb{Z}}, +, \times)$.

### Commutative rings

A careful reader would note that I didn’t specify that ${\curlyvee}$ had
to be commutative. That is, in the context of
$(A, {\backsim}, {\curlyvee})$, for $a, b \in A$, it isn’t necessary
that $a {\curlyvee}b = b {\curlyvee}a$.

The only time this needs to be true is if either $a$ or $b$ is
$I_{\curlyvee}$.

<span>If</span> $a {\curlyvee}b = b {\curlyvee}a$, for all $a, b \in A$,
then you have a i<span>commutative ring</span>! If not, then
$(A, {\backsim}, {\curlyvee})$ is an ordinary ring.

Yay! After 500 lines of LaTeX, we finally got to the point!

#### Notation

Since this is a book about commutative rings, it wouldn’t make sense to
have to specify that each ring that we’re dealing with is commutative,
would it? So, from here on out, assume that all rings are commutative,
unless I tell you otherwise.

On the topic, it’s a bit cumbersome to have to write
$(A, {\backsim}, {\curlyvee})$ when I want to discuss an ordinary
commutative ring. So, instead, I’m going to rely on you to assume that
any set $A$ that I talk about from now on is a commutative ring.

If I tell you that $A$ is not a commutative ring, please do not take the
previous paragraph to assume that I’m lying, and that $A$ really is a
commutative ring.

Am I smart enough to read this?
-------------------------------

> Everybody is a genius. But if you judge a fish by its ability to climb
> a tree, it will live its whole life believing that it is stupid.
>
> – Albert Einstein

This book is intended for anyone who has an interest in math. You don’t
have to have a PhD to understand this stuff. It’s actually pretty
simple.

As I point out many times later on, mathematicians are really lazy. We
like to make ourselves sound smarter by expressing simple ideas in
incomprehensible notation.

I guarantee, by the end of reading this, you too can act like a
pretentious jackass, and start writing things like

$$\forall a \in R,{,\hspace{1pt}}\exists (-a) \in R \mid a + (-a) = 0$$

Albert Einstein is full of great quotes. Another one of my favorites is
“If you can’t explain it to a six year old, you don’t understand it
yourself.” That’s the mindset I took when writing this. How can I
express these simple concepts simply?

This book is (hopefully) written so that a six year old could understand
it. That said, if there are any six year olds reading this, please
ignore the cursing.

It would definitely help if you have elementary school mathematics under
your belt. Even that is not entirely required. As long as you can employ
logic, and can read English fluently, you shouldn’t have any trouble
reading this!


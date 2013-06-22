Spacey
======

What is Spacey?
---------------
Spacey is a Javascript compatible library implementing a 
review prioritisation system.  It is intended to allow developers to
build systems that help users optimise the time they use to 
memorise facts.

What is Spacey not?
-------------------
In some ways it is easier to describe Spacey by contrasting it to
what it is not.

- Spacey is not flash card system.  It can be used to build
  a flash card system, but it can also be used to in other
  areas where review is necessary.  See the Future Steps
  section for an example of what I want to use Spacey for.

- Spacey is not a Spaced Repetition System (SRS).  Spacey will
  include an SRS system, but it will be used in conjunction
  with other techniques such as spacing (different than spaced
  repetition) and interleaving.

Using Spacey
------------
Spacey is currently in development and doesn't do anything yet.
Note that Spacey is a development library.  It is only useful for
developers writing applications.

Helping with Development
------------------------
If you wish help with development, you will need the following:

- node.js: latest version (0.10.3) as of this this writing
- coffee-script: Install using `npm install coffee-script`
- jasmine-node: Install using `npm install jasmine-node`

Warning: The version of node.js on Ubuntu (and presumably other
Debian based systems) is not supported by the version of coffee-script
in npm.  Thus you must compile node.js yourself.  You can get it
[here](http://nodejs.org/).

To run the tests type: `jasmine-node --autotest --coffee src` from the 
main directory.  This will run the tests and watch for changes on the
source code in order to rerun appropriate tests.

Note: the script test.sh will set up the path and run the
tests assuming that you put the node modules directory in
the current directory.

Frequently Unanswered Questions
-------------------------------
Don't ask me to make an acronym for the above heading... These
questions have not been asked yet, but I suspect they will be.
So here are my answers in advance, so that you don't have to ask me...
and I don't have to answer again.

### Why Coffeescript?

1. Why is this in Coffeescript????  Because I wanted to play
   with Coffeescript.
2. No, I mean, why do this with a Javascript derivative???  Short
   answer: Because I wanted to.  Long answer:  I have an idea
   that it might be useful for me in the future, but in the meantime,
   I just wanted to play with Coffeescript.
3. No, I mean, I can't do anything with this except write
   browser plugins or websites.  Isn't that completely useless?
   No, I don't think so.
4. OK, how about implementing this in a useful language?
   Maybe, if I feel like it.  However, Spacey should not be
   complicated.  Feel free to look at the implementation and
   reimplement in your definition of a useful language.  I
   will probably even help you if you do the lion's share of
   the work.

#### Unique SRS algorithm

1. Why did you reinvent the wheel with your SRS algorithm?  Because
   it was fun.
2. No, I mean, why not use something proven like Supermemo's?  It
   is true that Supermemo's algorithm is used ubiquitously.  That is
   in fact part of the reason I chose not to use it.  Everybody using
   the same technique means that we will never improve the state of
   the art.
3. No, I mean, Supermemo dude got a PhD for his work on that algorithm.
   What makes you think you can do something better?  I don't know
   if mine is better or not.  However, if you look at the Supermemo
   algorithms, you will see many decisions being made with no
   reference to data backing it up.  For example, the backoff timing
   appears to be completely arbitrary based on his gut feeling
   of how it should work.  He claims that he has data to back up his
   decisions, but doesn't document those claims.
4. But with the Supermemo algorithms, the user chooses how well they
   know the item, while with Spacey's algorithm, you only specify
   if they remembered or not.  Isn't Supermemo's algorithm better?
   There is no evidence to support that a person's impression of
   how well they know something is correlated to how well they
   actually know something.  In fact, there is considerable evidence
   to support the opposite hypothesis.  See: Dunning-Kruger effect.
5. But with Supermemo, the algorithm knows when I need to review
   something.  Spacey's algorithm doesn't calculate that.  Isn't
   that worse?  See: What Spacey is not.  Spacey is not a Spaced
   Repetition System.  It merely prioritises reviews.  It tells you
   which item is the most important to review now.  You choose
   when to review.  I feel this is a feature, not a bug since I
   don't want a computer program telling me that it's time to study.
   YMMV.

### What are the differences between Spaced Repetition, Spacing and Interleaving

Spaced Repetition is a technique to periodically review something so
that the slope of the "forgetting curve" on that thing is lessened.
The "forgetting curve" is the speed at which you forget something.
It measures the probability that you will forget something over time.
For example, if you don't review something for 5 minutes, you might
have a 95% chance of remembering something.  If you wait 1 day, maybe
that drops to 60%.  If you wait a week, perhaps it drops to 20%.  By
periodically reviewing something, the slope of the curve diminishes.
After you have reviewed something several times you might still have
a 95% chance of remembering it even if you never see it for a week.

The trick to spaced repetition is to wait until the best possible time
to review something.  If you forget something, you must relearn it, which
takes time.  Most spaced repetition systems try to time the review
so that you remember it just before you are likely to forget it.  This
minimises the number of times you must review something, while avoiding
relearning.

Spacing is a different technique than Spaced Repetition (with a similar
name, unfortunately).  The idea is that if you wait until you forget
something and then relearn it, you will remember it better than if
you had reviewed before you forgot it.  In other words, the forgetting
curve will have a shallower slope than if you used spaced repetition
and continually remembered it.

The trick to spacing is to intentionally forget something and then
relearn it.  This appears to work best when initially learning something,
so it may be that spacing is best for new items, while spaced reptition
is best for older items.  This is an area of active research, though,
so solid evidence is sparse.  Some have called the "spacing effect" the
most powerful effect for learning that there is.

Finally, Interleaving.  Interleaving is the idea of studying for a bit
on one subject and then switching to another subject.  You then study
a bit for that subject and then swithch to yet another subject.  Eventually
you go back to the first subject.

So if you had 3 subjects (A,B,C) that each took 30 minutes to learn,
with interleaving you might spend 10 minutes on A, 10 minutes on B,
and 10 minutes on C, before cycling back to A.  You would then cycle
through all the subjects 2 more times.  The theory is that you will
remember the items better than if you had studied A for 30 minutes
followed by B for 30 minutes, followed by C for 30 minutes.  In
other words the forgetting curves for the items will have shallower
slopes.

Because interleaving causes spacing to happen (i.e., you may forget
what you did in your first 10 minutes when you start the second 10
minutes), it is unknown whether interleaving is an effect in itself or
simply an easy technique for causing spacing to happen.  There is some
speculation that changing topics makes it easier to forget what you
have learned, which triggers the spacing effect faster.  In other words,
because you switched topics rather than just having a rest, you
forgot the first part faster than you normally would.  This allows the 
spacing effect to be used the second time around.  I you had just rested, 
you might still remember the material, meaning that you can't use the
spacing effect.

Most people who have used spaced repetition realise how massive
a benefit it is for learning something.  It has been said that spacing
and interleaving eclipse spaced repetition in effectiveness by at least
a binary order of magnitude.  That is why I really want to try to find
some ways of implementing it in Spacey.

Future Steps
------------
While I have avoided talking about why I am writing Spacey, there are
actually a few things that I have in mind.

First, when I originally wrote JLDrill, I chose Ruby and GTK+ because
I was interested in learning Ruby and I was only concerned with deploying
on Linux based systems. As development continued, I became increasingly
frustrated at the difficulty in deploying GTK+ Ruby applications on
Windows and Mac.  While not impossible, it is quite difficult and it
cut down on potential contributors.  The set of people learning Japanese
while using Linux based systems and secure enough with Ruby to install
the app through a Gem is quite small.

Quite some time ago, someone suggested that I switch to making a web
application.  I initially threw out the idea as I did not want to
maintain a website for others to use.  However, the idea lodged itself in
my brain and because deployment of JLDrill is so difficult, I may yet
do it. 

The choice of Javascript/Coffeescript as a development language is strange.
On the one side, after learning Javascript I became enamoured with its
minimilistic approach.  Looking at Coffeescript, it looked even more
entertaining and I knew that I wanted an excuse to use it.  Spacey is
that excuse.

Some ideas I have for Spacey are more practical, though.  First, I can
see potential in utilising it together with browser plugins like
Rikaichan.  In fact, if Rikaichan had had a spaced repetition system
built into it, I would never have written JLDrill.  The whole idea of
being able to browse the web searching for unknown words/sentences
and then easily sticking them into a review system appeals to me
greatly.  I think writing Spacey is a much better idea that extending
JLDrill so that it can browse the web.

Still with plugins I can see potential for other useful things.  Human
languages are not the only thing that can benefit from review systems.
It occurs to me that we have a learning problem amongst programmers.
We don't identify and study good code.  A plugin that allowed one to
browse something like Github and help the user review code that was
good, so that it becomes second nature to them might be useful.

Even more ambitiously, I have an idea that such a learning system could
be useful for training new users on a website.  I once jokingly
suggested that we use electric shocks in our application to ward users
away from features that were buggy.  The idea is to train them to use
it "properly" (where "properly" means the way we tested it).

In seriousness, trying to build a system that helpfully reminds people
how to do things at regular intervals might be beneficial.  Making
a system that determines what thing is more important to be reviewed
at any given time could be useful.  Although, I am aware of the risk
of developing the next MS Bob.

In any case, at the moment, this is mostly a programming exercise for me,
but in the long term I think there are some opportunities for Spacey.
Only time will tell.


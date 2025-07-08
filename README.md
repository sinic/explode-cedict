This stupid AWK script finds Chinese words
consisting only of characters occuring in words you already know,
useful for suggesting low-hanging fruit to add to a flashcard deck.

Here's an almost minimal example, just to demonstrate its usage:
```
$ curl https://www.mdbg.net/chinese/export/cedict/cedict_1_0_ts_utf-8_mdbg.txt.gz | gunzip > cedict.txt
$ ./explode-cedict.awk - cedict.txt << EOF
> 你好
> 我
> EOF
你 你 [ni3] /you (informal, as opposed to courteous 您[nin2])/
你好 你好 [ni3 hao3] /hello/hi/
你我 你我 [ni3 wo3] /you and I/everyone/all of us (in society)/we (people in general)/
好 好 [hao3] /good/appropriate; proper/all right!/(before a verb) easy to/(before a verb) good to/(before an adjective for exclamatory effect) so/(verb complement indicating completion)/(of two people) close; on intimate terms/(after a personal pronoun) hello/
好 好 [hao4] /to be fond of; to have a tendency to; to be prone to/
好好 好好 [hao3 hao3] /well; carefully; nicely; properly/
我 我 [wo3] /I; me; my/
```

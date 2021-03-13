From: Ken Dawson <Peak@X930.Tymnet> 
Date: Sun, 13 Apr 86 15:39:38 PST 
To: mdems.k/dawson@ontyme 
Subject: testing 

define ! = "comment", !! = "comment";
begin
  require"(klib)sail.hdr"  source!file;
  require "(klib)util.req" source!file;

  string
    Str;

  while (Str _ Prompt.User("Lookup which file? ")) do
    print(boolstr(File.Exists(Str)), crlf2);

  exit;
end;
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Tue, 15 Apr 86 19:15:30 PST 
To: Ken Dawson <Peak@X930.Tymnet> 
Cc: Lois Lindley <Lindley@C36.Tymnet> 
Subject: luncheon? jfl's 

That is still set for tomorrow... wednesday?
Call me if not... else send me a reminder of the
time... i think I have written 11:30 but that seems early.
/Carl

ps: 408-945-4314
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Fri, 18 Apr 86 14:30:04 PST 
To: !oliveb!hplabs!brengle@tymix.tymnet 
Subject: Did you receive this? 

    Tim,

    I was great to see you and Barb.  I hope to see more of you. Let me
    know if you received this.

    /ken
From: Postmaster 
Date: Fri, 18 Apr 86 14:33:27 PST 
To: Ken Dawson <Peak@X930.Tymnet> 
Subject: Returned MAIL 

The following message was not delivered because:
RCPT To: <!oliveb!hplabs!brengle@tymix.tymnet>
<!oliveb!hplabs!brengle@tymix.tymnet>... User unknown



----------
RCPT To: !oliveb!hplabs!brengle@tymix.tymnet 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Fri, 18 Apr 86 14:30:04 PST 
To: !oliveb!hplabs!brengle@tymix.tymnet 
Bcc: PEAK@X930.Tymnet 
Subject: Did you receive this? 

    Tim,

    I was great to see you and Barb.  I hope to see more of you. Let me
    know if you received this.

    /ken
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Thu, 1 May 86 19:55:50 PDT 
To: Peak Maintainer <Peak@X930.Tymnet> 
Subject: Resume, etc. 

Ken,
  I sent a msg to those in our group about the rift in ONTYME and added a
comment to Craig, about your abilities and how you'd fit into our support
picture, but as yet, no response.

What did you do for ONTYME, as in write slot code, assembler/pascal, etc...
I'm trying to talk a group at Orchard Parkway into writing something into a
slot instead of running on a set of host (PDP-10) computers.  Yes, you read
that right... to run something NOT on a 10.  What they're doing is really a
network product and should be built into the net instead of chewing up a lot
of resources, as well as generating lots of network traffic to talk to the
net.

Anyway, if they are interested, might you be interested?  I don't know what
you do in ONTYME, so I don't know your capabilities as far as engine/slot
code writing.

/Carl
Received: from C36.Tymnet by X930.Tymnet; Sat, 10 May 86 3:16:07 PDT
Return-path: <Postmaster@C36.Tymnet> 
From: Postmaster 
Date: Sat, 10 May 86 3:15:47 PDT 
To: Ken Dawson <Peak@X930.Tymnet> 
Subject: Returned MAIL 

The following message was not delivered because:
User has not read mail in 30 days: 
Last logout: 1 Jan 64


----------
RCPT To: slldcain 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Thu, 6 Mar 86 10:52:04 PST 
To: ntd.m/shen@ontyme 
Cc: anewman, slldcain, schramm 
Bcc: KDAWSON@C36.Tymnet 
Subject: lvol nucleus bug? 

    Martin,

    Please help me.  I need to know what (if anything) is going wrong
    with my use of the nucleus with regard to determining the state of
    the logical disk volumes we are using in Ontyme.

    I recently added some code to the online pack copy logic in Ontyme
    to insure that both logical volumes involved in the transfre are
    in R/W state before allowing the copy operation to be initiated.
    The io call to the nucleus used was

        io(data, parm, lvol, 0);

    where

        parm.operation := lvol_info;

    and my tests of this indicated that the information returned in
    the "options" field of the information record did not accurately
    reflect the actual state of the drive in question. In particular,
    I switched the "from" drive into Read-Only state and found that my
    lvol_info request indicated that the drive was in R/W state.

    Enclosed is a copy of the memo I wrote after doing my tests,
    detailing what I did.  What I would like to know is how to
    reliably tell the state of the logical volumes without causing
    them to go into a state which cannot be changed without
    re-executing the slot.

    Thanks for your consideration,
    
    Ken Dawson (mdems.k/dawson),
    Ontyme Development
                   Does Ontyme really know its disk units?

        I modified the Online Pack Copy command logic in UTLCMD.OSI to
        include a test of the availabilty of both logical units.  This
        was in order to prevent a pack copy operation from being
        initiated if one of the units involved is not in READ/WRITE
        state.

        The code I added mimicked the "DISPLAY VOLUME" command logic
        in performing a "dsksys.disk_info()" call and checking the
        "options" field of each unit entry for a value of "1"
        (advertised to mean READ/WRITE status).

        The tests I performed today, and the results I got were as
        follows:

            o   I logged into OSIRIS:815, userid SUP.SUP.

            o   I put unit D0 into READ ONLY state by flipping the
                switch on the disk drive unit itself.

            o   I issued the command :COPY D0 D1.  In response, the
                following was printed:

            COPY FROM UNIT 00000000 VOL. 00000000 INCARNATION 00000000
                  TO  UNIT 00000001 VOL. 00000000 INCARNATION 00000000
            TOTAL PAGES= 000C7236

                and the "SELECT" light on D0 flickered for one or two
                minutes, apparently as the unit was being read.  After
                this delay, the following was printed:

            DISK ERROR
            COPY ABORTED!!

                (I had anticipated that my error eration
                not even attempted.)

            o   I attempted to try to guess what I should say to get
                some status information, issuing a number of commands
                which did no disk writing, and then I issued the
                "LOGOUT" command.

                The response was 

            please log in:

                a sure sign that Ontyme had crashed.  Later
                investigation showed that the reason for the crash was
                "DataBase Offline-FAIL 99"

            o   After switching D0 back to READ/WRITE state, I
                executed the slot using the DDT "E" command and found
                the system up and happy.

            o   I logged in to :815 again as SUP.SUP and issued the
                "DISPLAY VOLUME" command.  The response was:

            UNIT VOL MODE
              0   0   RW
              1   0   RW

            o   I then switched D0 into READ ONLY state and repeated
                the "DISPLAY VOLUME".  The response was:

            UNIT VOL MODE
              0   0   RW
              1   0   RW

                Ten seconds or so later, I repeated the command, and
                received the response:

            UNIT VOL MODE
              0   0   DOWN
              1   0   RW


            o   After switching the drive back to READ/WRITE state,
                all succeeding "DISPLAY VOLUME" commands showed the
                unit to be DOWN.  Attempts to FILE large files did not
                cause the "SELECT" light on D0 to flicker.

                This seemed to indicate that once the nucleus has
                decided the unit is down, there is no way to change
                that state, short of re-executing the slot.


        Right now, it seems that the only way to tell if a drive is
        "DOWN" is to try to write to it.  That's ok, but it also seems
        that once a drive is found to be "DOWN", it can never be
        returned to READ/WRITE status.

        Note that the result of the "dsksys.disk_info()" call did not
        accurately reflect the fact that the drive was in READ ONLY
        state.  My guess is that either the nucleus does not really
        understand the disk controller in a number of ways, or the
        disk controller is giving erroneous information.
~
Received: from C36.Tymnet by X930.Tymnet; Sat, 10 May 86 3:16:41 PDT
Return-path: <Postmaster@C36.Tymnet> 
From: Postmaster 
Date: Sat, 10 May 86 3:15:48 PDT 
To: <Peak@X930.Tymnet> 
Subject: Returned MAIL 

The following message was not delivered because:
User has not read mail in 30 days: 
Last logout: 1 Jan 64


----------
RCPT To: <slldcain@c36.Tymnet> 
Received: from X930.Tymnet by C36.Tymnet; Fri, 14 Mar 86 23:02:18 PST
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Fri, 14 Mar 86 22:22:46 PST 
To: anewman@c36, frickel@c36, slldcain@c36 
Subject: ontyme message m70392 from J Giordano, et al 

    This message starts out "N O T I C E".  Who do we work for?  Who are
    these people?  Who do they work for?  Who is being curtailed?  Who
    didn't make a profit?  When does this end?

    respectfully yours,
    /Ken
Received: from D54.Tymnet by X930.Tymnet; Fri, 30 May 86 0:14:12 PDT
Return-path: <PEAK@D54.Tymnet> 
From: PEAK@D54.Tymnet 
Date: Tue, 20 May 86 11:46:17 PDT 
To: oliveb!hplabs!brengle@tymix.tymnet 
Subject: did you get this? 

hi tim i'm trying again. i've been re-attained for the tyme being
at the?as gone to ntd
bye
ken
Received: from D54.Tymnet by X930.Tymnet; Fri, 30 May 86 14:22:07 PDT
Received: from B39.Tymnet by D54.Tymnet; Fri, 30 May 86 14:22:14 PDT
Received: from C57.Tymnet by B39.Tymnet; Fri, 30 May 86 10:05:44 PDT
Return-path: <WRS@C39.Tymnet> 
From: Postmaster 
Date: Fri, 30 May 86 10:05:45 PDT 
To: Postmaster 
Subject: Returned MAIL 
Resent-from: William R. Soley <WRS@C39.Tymnet> 
Resent-date: Fri, 30 May 86 14:11:12 PDT 
Resent-to: peak@54 

The following message was not delivered because:
Mail domain not known: HPLTJB



----------
RCPT To: <oliveb!hplabs!brengle@hpltjb> 
From: Postmaster 
Date: Fri, 30 May 86 10:05:43 PDT 
To: <oliveb!hplabs!brengle@hpltjb> 
Subject: Returned MAIL 

The following message was not delivered because:
Mail domain not known: 54



----------
RCPT To: <PEAK@D54> 
Received: from tymix.Tymnet by C57.Tymnet; Fri, 30 May 86 10:05:25 PDT
Received: by tymix.Tymnet (4.12/4.7) id AA08389; Fri, 30 May 86 10:04:16 pdt
Received: by oliveb.ICO (4.12/4.7) id AA27397; Fri, 30 May 86 10:03:07 pdt
Received: from hpltjb by hplabs.ARPA ; Fri, 30 May 86 10:01:11 pdt
Received: by hpltjb ; Fri, 30 May 86 10:00:56 pdt
Return-path: <oliveb!hplabs!brengle@hpltjb> 
From: Tim Brengle <oliveb!hplabs!brengle@hpltjb> 
Date: Friday, May 30, 1986 22:00:52 
To: oliveb!tymix!D54.PEAK 
Message-id: <8605301700.AA00181@hpltjb> 
Subject: Re: did you get this? 
Posted-Date: Friday, May 30, 1986 22:00:52
In-Reply-To: Your message of 20-May-86 23:46:17
X-Sent-By-Nmail-Version: 04-Nov-84 17:14:46

Hi Ken!

How nice to get good news every once and a while.  I am
glad that McAuto saw the error of letting you go.

How is Chia?  How about the rest of the world?  So far,
you are the only one that has replied to the initial
set of messages I sent out.

We will be moving to the new house in Campbell soon.
When we get a new phone number, I will send it to you.

			Take care,
				Tim
-------
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 11 Jun 86 2:04:01 PDT 
To: Peak Maintainer <Peak@X930.Tymnet> 
Subject: Subject: Mail on 62 

There is an experimental XEXEC running on system 62.

From now until Friday, the normal MAILER/ONTMTP functions will NOT
work.  Thus, mail will not get forwarded from 62 or read by ONTYME
on any regular basis.

I'm off for the weekend, (Wednesday-Thursday)  See you Friday.
/Carl
Received: from C36.Tymnet by X930.Tymnet; Thu, 19 Jun 86 5:28:33 PDT
Return-path: <JMS@X930.Tymnet> 
From: Joe Smith <JMS@X930.Tymnet> 
Date: Thu, 19 Jun 86 5:21:46 PDT 
To: CARL, Peak Maintainer <Peak@X930.Tymnet> 
Subject: Validations at work on system 36 

UFD		NAME on UFD	Current PPN for name
11334,1222	RWS		11334,401222
11334,22613	BASELINE	21476,404146
11334,26715	SOURCE		21476,404152
11334,133144	BETATEST	21476,404153
50527,402622	RMURPHY		11334,431676

The program (CUD10)USERS shows that the above UFDs do not have matching LUD
and DUL entries.	/Joe
Received: from C36.Tymnet by X930.Tymnet; Thu, 19 Jun 86 6:12:30 PDT
Received: from X62.Tymnet by C36.Tymnet; Thu, 19 Jun 86 6:10:48 PDT
Return-path: <Carl@X930.Tymnet> 
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Wed, 11 Jun 86 2:01:38 PDT 
To: Peak Maintainer <Peak@X930.Tymnet> 
Subject: Mail on 62 

There is an experimental XEXEC running on system 62.

From now until Friday, the normal MAILER/ONTMTP functions will NOT
work.  Thus, mail will not get forwarded from 62 or read by ONTYME
on any regular basis.

I'm off for the weekend, (Wednesday-Thursday)  See you Friday.
/Carl
Received: from C36.Tymnet by X930.Tymnet; Thu, 19 Jun 86 6:13:20 PDT
Received: from X62.Tymnet by C36.Tymnet; Thu, 19 Jun 86 6:11:29 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Wed, 18 Jun 86 14:38:55 PDT 
To: Carl A Baltrunas<Carl@X930.Tymnet> 
Subject: :36's lud? 

    Carl,

    I was running 'findit' on :36 to find files of the description
    'ontm##.*', and the list which issued forth was long and featured
    (different) entries from (BETATEST) at the beginning of the  list and
    towards the end of the list.  Using DIRIT on (BETATEST) causes the
    latter to be displayed.

    /ken
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Thu, 19 Jun 86 11:15:55 PDT 
To: Carl A Baltrunas<Carl@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Subject: Validations on :36 

    My guess is that "RWS" stands for Ron W.  Saltgaver, and that this
    whole set of problems is due to an unartful backdoor revalidation.  The
    last name listed (RMURPHY), remember, was discovered to have been moved
    into gan 3 sometime earlier, probably by RWS at the behest of Ken
    Jones, and this looks like a followup effort.

    /ken
Received: from C35.Tymnet by X930.Tymnet; Sat, 21 Jun 86 14:20:19 PDT
Return-path: <Ken@X930.Tymnet> 
From: Ken Dawson <Ken@X930.Tymnet> 
Date: Mon, 26 May 86 23:48:45 PDT 
To: carl 
Subject: meltdown on 36 

both (peak) and (kdawson) have no files on :36. others appear untouched.
do you know anything about this?
/ken
From: Carl A Baltrunas <Carl@X930.Tymnet> 
Date: Sat, 21 Jun 86 17:16:20 PDT 
To: Peak Maintainer <Peak@X930.Tymnet> 
Cc: William R Soley <wrs@C39.Tymnet> 
Subject: 36 meltdown? 

No idea... but it is rumored that this week or next week (or so) that
36 is going to move into BUBBnet and it is possible that someone is
purging files again.... sigh.


-------------------------------------
Subject: meltdown on 36 <<- forwarded message

both (peak) and (kdawson) have no files on :36. others appear untouched.
do you know anything about this?
/ken
-------------------------------------

Sigh!.... MDC and it's tiny little company strategy
   and validation services  --- > STRIKE AGAIN < ---

Received: from X62.Tymnet by X930.Tymnet; Wed, 25 Jun 86 20:28:14 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Wed, 25 Jun 86 20:27:09 PDT 
To: Carl A Baltrunas<Carl@X930.Tymnet>, Joe Smith <jms@X930.Tymnet> 
Subject: C24 

Where did system 24 come from? How come you can't set license?
/ken
From: Joe Smith <JMS@X930.Tymnet> 
Date: Thu, 26 Jun 86 13:41:22 PDT 
To: Ken Dawson <Peak@X930.Tymnet> 
Cc: Carl A Baltrunas<Carl@X930.Tymnet>, osman 
Subject: Re: C24 
In-reply-to: your message of Wed, 25 Jun 86 20:27:09 PDT

C24 is a KI used for development and testing of the TYMCOM-X monitor and new
base code.  I telecopied the OPER password file from 930 to 24 today.
		/Joe
Received: from X62.Tymnet by X930.Tymnet; Fri, 11 Jul 86 22:29:48 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Mon, 7 Jul 86 11:33:00 PDT 
To: kdawson@c35 
Subject: scanset printer maintinence 

    The sucker is squeaking when it pushes pages forward.  Needs wd-40, or
    what?
Received: from X62.Tymnet by X930.Tymnet; Fri, 11 Jul 86 22:30:05 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Fri, 11 Jul 86 22:24:00 PDT 
To: Carl A Baltrunas<Carl@X930.Tymnet> 
Subject: wipe/yank problem 

    It seemed to be a tiny problem in setting my "left in core" count which
    was hangining me up.  Instead of being set to "max chars" when a chunk
    is read into memory, "left in core" was being set to the entire kill
    buffer size.  This had disasterous consequences.
    The fix was small, and seemingly quite effective.

     More later.

     ./ken
Received: from X62.Tymnet by X930.Tymnet; Fri, 11 Jul 86 22:30:14 PDT
Return-path: <Postmaster@X62.Tymnet> 
From: Postmaster 
Date: Fri, 11 Jul 86 22:29:42 PDT 
To: Joe Smith <JMS@X930.Tymnet> (Liberty Street in Fremont 116-2512) 
Subject: Returned MAIL 

The following message was not delivered because:
User has not read mail in 30 days: LINDLEY
Last logout: 1 Jul 86


----------
RCPT To: LINDLEY 
From: Joe Smith <JMS@X930.Tymnet> (Liberty Street in Fremont 116-2512) 
Date: Fri, 6 Jun 86 13:42:59 PDT 
To: Carl A Baltrunas <carl@X930.Tymnet>, LINDLEY, ANEWMAN 
Bcc: JMS@X62.Tymnet 
Subject: LINDLEY and ANEWMAN on 62 

I moved Lois' and Adele's files from 930 to 62 after correcting their PPNs.
(LINDLEY)=[50527,402041] and (ANEWMAN)=[50527,402042].
By the way, who is (NEWMAN)=[11447,15776]?  There is a copy of BIONIC there
on 62.   /Joe
Received: from X62.Tymnet by X930.Tymnet; Fri, 11 Jul 86 22:30:22 PDT
Return-path: <Postmaster@X62.Tymnet> 
From: Postmaster 
Date: Fri, 11 Jul 86 22:29:45 PDT 
To: Joe Smith <JMS@X930.Tymnet> (Liberty Street in Fremont 116-2512) 
Subject: Returned MAIL 

The following message was not delivered because:
User has not read mail in 30 dANEWMAN
Last logout: 1 Jul 86


----------
RCPT To: ANEWMAN 
From: Joe Smith <JMS@X930.Tymnet> (Liberty Street in Fremont 116-2512) 
Date: Fri, 6 Jun 86 13:42:59 PDT 
To: Carl A Baltrunas <carl@X930.Tymnet>, LINDLEY, ANEWMAN 
Bcc: JMS@X62.Tymnet 
Subject: LINDLEY and ANEWMAN on 62 

I moved Lois' and Adele's files from 930 to 62 after correcting their PPNs.
(LINDLEY)=[50527,402041] and (ANEWMAN)=[50527,402042].
By the way, who is (NEWMAN)=[11447,15776]?  There is a copy of BIONIC there
on 62.   /Joe
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Mon, 14 Jul 86 1:02:54 PDT 
To: Joe Smith <jms@X930.Tymnet> 
Subject: anewman 

    (ANEWMAN) actually should be in GAN 11334, which belongs to NTD.  50527
    belongs to ONTYME, where she used to make a profitable living.  There's
    been a number of such migrations away from ONTYME, most notable
    RMURPHY.

    /ken
Received: from X62.Tymnet by X930.Tymnet; Mon, 14 Jul 86 1:25:56 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Mon, 14 Jul 86 1:20:58 PDT 
To: acs.l/lindley@ontyme 
Subject: move form 930 to 62 

    I just got a message from Joe Smith indicating that LINDLEY has been
    moved from :930 to :62.  There was some question as to whether you
    received this information, so I thought I let you know. This is also
    true of ANEWMAN.

    /Ken

Received: from X62.Tymnet by X930.Tymnet; Tue, 22 Jul 86 5:00:15 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Mon, 21 Jul 86 14:13:04 PDT 
To: Carl A Baltrunas<Carl@X930.Tymnet> 
Subject: ontyme message pickup and delivery 

    Carl,

    Has anyone been hosing with node code surrounding :930?  The last
    couple of ontyme messages which the appropriate TUMS object has
    forwarded to me have experienced MASSIVE data loss in the process.
    It's curious:  after I sent you mail about my loss of forwarding, and
    after said was restorted, I received 14 messages, most of which were
    intact.  The later ones (2, I think) in the 14-message burst of
    transmission lost data, however.  I just received 1 message in a single
    burst which was so badly mangled that I had to actually log into OnTyme
    to read it again.

    Anyway, you get the picture.  I suspect the base code because this has
    happened before and been the fault of some form of engine-resident
    code, rather than application code (to wit:  vis-a-vis:  see also:  the
    proper TUMS object).  Tell me otherwise, if such is the case.

    /Ken
From: CARL@X930.Tymnet 
Date: Tue, 22 Jul 86 10:16:24 PDT 
To: peak 
Subject: "Ken, I just got your mail along"... 

Ken,
 I just got your mail along with a ton of other mail... on 930.  Again,
I have not seen any data lossage recently on 930.  So, I suspect the
prolem is not in the micro-node code... more later.
I am sick today, not at the office... flu symptoms... sigh.

/Carl
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Fri, 25 Jul 86 22:58:38 PDT 
To: Carl A Baltrunas<Carl@X930.Tymnet> 
Subject: mystery file 

    On (PEAK:62), there is a file Y which I seem to have authored, but do
    not remember creating.  It is a cornucopia of stuff, some text (mail in
    fact), a sail program, some binary stuff (a SAV or REL file perhaps?),
    much of it Lois's and all of it mixed unmercifully.  It looks like a
    disk page salad, and that's why I thought you might be interested in
    it. Let me know when I can delete.

    /ken

    ps: hope you are feeling better.
Received: from X62.Tymnet by X930.Tymnet; Sun, 27 Jul 86 13:14:49 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Sun, 27 Jul 86 12:47:44 PDT 
To: L0.Tymnet> okaydley@C35.Tymnet> 
Subject: a neat trick for folks who HATE tabs 

    I accidenatlly discovered something the other day which you might find
    handy.  You see, the one benefit of tabs which space lovers sacrifice
    in their devotion to order, consistency, and sanity is the funny
    variable width of the grubby little tab character itself (we'll ignore
    space savings.)  This is a quite handy feature if you expand a line
    with a co0.Tymnet> okay
O/ment, if it doesn't leap 8 characters to
    the right, stays in the same place. 

    The hack I found is to create a macro as follows:

        ^Xd/$XInsert Tab$$XDelete Whitespace Forward$/

    and bind it to a friendly key (even ^I, if you wish).  What it will do
    is cause the text to the right of the cursor to move to the next
    tabstop after the cursor.  Multiple uses of it moves over multiple
    tabstops.  It's not the same, automat0.ise as the other construct,
    but real handy nonetheless.
Received: from C35.Tymnet by X930.Tymnet; Sun, 27 Jul 86 14:01:47 PDT
Return-path: <Postmaster@C35.Tymnet> 
From: Postmaster 
Date: Sun, 27 Jul 86 13:15:21 PDT 
To: <Peak@X930.Tymnet> 
Subject: Returned MAIL 

The following message was not delivered because:
RCPT To: <!Lindley@C36.Tymnet>
550 <!Lindley@C36.Tymnet> invalid, not sending mail



----------
RCPT To: !Lindley986net 
Received: from X62.Tymnet by C35.Tymnet; Sun, 27 Jul 86 13:15:01 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Sun, 27 Jul 86 12:47:44 PDT 
To: Lois Lindley <Lindley@C35.Tymnet> 
Subject: a neat trick for folks who HATE tabs 

    I accidenatlly discovered something the other day which you might find
    handy.  You see, the one benefit of tabs which space lovers sacrifice
    in their devotion to order, consistenc986
t>  the funny
    variable width of the grubby little tab character itself (we'll ignore
    space savings.)  This is a quite handy feature if you expand a line
    with a comment on it; the comment, if it doesn't leap 8 characters to
    the right, stays in the same place. 

    The hack I found is to create a macro as follows:

        ^Xd/$XInsert Tab$$XDelete Whitespace Forward$/

    and bind it to a friendly key (even ^I, if you wish).  Wh986
t> s cause the text to the right of the cursor to move to the next
    tabstop after the cursor.  Multiple uses of it moves over multiple
    tabstops.  It's not the same, automatic-wise as the other construct,
    but real handy nonetheless.
Received: from B39.Tymnet by X930.Tymnet; Wed, 13 Aug 86 14:06:23 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 13 Aug 86 14:04:12 PDT 
To: peak 
Subject: checkpoint bug? 

It seems that CHECKPOINT will operate every N seconds regardless of how much
keyboead input is received.  This is very annoying since it causes pauses in
editing and also wastes alot of resources in the case of big files.  Please
comment.  -Bill
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Wed, 13 Aug 86 16:15:26 PDT 
To: William R. Soley <WRS@B39.Tymnet> 
Subject: Re: checkpoint bug? 
In-reply-to: your message of Wed, 13 Aug 86 14:04:12 PDT

    Bill,

    Peak deliberately checkpoints at regular intervals.  The idea is that
    since some people edit (read:  interact) continuously for hours at a
    stretch, it is better to force a checkpoint at regular intervals rather
    than lose everything.  This was enacted specifically in response to
    user complaints.  The checkpoint interval can be changed to any value
    you wish and defaults to 60 seconds.  Maybe a larger number would get
    in your way less.  If I recall correctly, Dave's version required that
    the keyboard be quiescent for the checkpoint interval before he would
    do his checkpoint, and this ended up being very unpopular.

    If you have any suggestions, I'm open.

    /Ken

    PS: How are you doing these days?
Received: from B39.Tymnet by X930.Tymnet; Wed, 13 Aug 86 16:54:07 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 13 Aug 86 16:45:26 PDT 
To: Ken Dawson <Peak@X930.Tymnet> 
Subject: Re: checkpoint bug? 
In-reply-to: your message of Wed, 13 Aug 86 16:15:26 PDT

I assume it will only checkpoint if the buffer is dirty.  Maybe a more
efficient method would be a journal file.  Just map a file a page at a
time and write every user keystroke into the file.  Then you can just
recreate the file at the instant of illness (plus or minus a few mS).
Since you'd never be doing more than one disk page of I/O at a time, the
user would not notice any delays.  What do you think?  -Bill
Received: from B39.Tymnet by X930.Tymnet; Wed, 13 Aug 86 16:54:13 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 13 Aug 86 16:49:07 PDT 
To: peak 
Subject: doing 

I've been doing pretty well.  Just got back from a backpacking trip to
Sequoia National Park (Bearpaw Meadow).  12 miles out, 12 mile day hike
and then 12 miles back.  (sore knees)  It was great.  But alas, it is
only worse when you get back.  I think I need about a 6 month vacation
to really get any benefit out of it.  I'll have to figure out some way
to do this.  Oh well.  -Bill
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Wed, 13 Aug 86 22:29:14 PDT 
To: William R. Soley <WRS@B39.Tymnet> 
Subject: Re: checkpoint bug? 
In-reply-to: your message of Wed, 13 Aug 86 16:45:26 PDT

    Yes, it only checkpoints if the buffer has been dirtied since the last
    checkpoint.  I recall being fascinated by replaying the journal on a
    screen-based teco variant on TOPS-20 called EDIT.  It can actually be
    quite helpful in recovering from stupid and disasterous type-o's.  My
    concern is that the page(s) in question actually be recoverable after a
    cataclysm without my having to close and reopen the journal all the
    time.  That is:  is the information kept current and complete enough to
    make a reliable checkpoint file?  (Pardon me if this question sounds
    naive; I recall when I was implementing verylarge file editing on
    TOPS-20 that this was a problem.)

    Also, I'm wondering if I keep enough state information to make a replay
    of a journal successful.  Am I to understand the journal to be a
    replacement for checkpoints, or an addition to a much less frequent
    checkpointing scheme?  If it's the latter, there may be a problem with
    stuff like search strings not being checkpointed.  It's worth thinking
    about.

    Incidentally, I have been doing some recreational improvement to Peak,
    the most notable of which is the elimination of the notion of "kill
    buffer overflow".  Although as usual Carl's suggestions hovered on a
    more grandiose plane than humanly possible, they were more EMACSish
    than what I created.  He wanted a circular list of kill buffers, which
    could be edited just like real buffers, with kill operations sort of
    percolating down to the next buffer in the ring (or some such thing).
    What he got was a essentially a special tmp file which acts as an
    extension of the memory resident part, used only when the size of the
    killed text exceeds the size of the memory buffer.  I did not use page
    mapping for this principally because I had about 2 days to do it in,
    and I knew I'd have to do more research if I did.

    Other things, which I'll explain later, have been included, and are
    currently being worked on.  It strikes me that the copy on :39 may be
    rather stale (vinatge edit number 301 or so).  The latest version is up
    on SYS on :62 and :35 (my other hangout since being jettisoned from
    :36).  Please either grab it or let me know that you're interested in
    it and I'll move it over to :39.

    More later.

    /Ken
Received: from B39.Tymnet by X930.Tymnet; Thu, 14 Aug 86 1:01:11 PDT
Return-path: <WRS@B39.Tymnet> 
From: William R. Soley <WRS@B39.Tymnet> 
Date: Wed, 13 Aug 86 23:22:16 PDT 
To: Ken Dawson <Peak@X930.Tymnet> 
Subject: Re: checkpoint bug? 
In-reply-to: your message of Wed, 13 Aug 86 22:29:14 PDT

By keeping only the last page of the journal file mapped, you will be
guarenteed that you will lose at most one page without any special
processing.  If this seems like too much of a risk (I think it is), then
you simply set a timer or counter and periodically perform VALPAG (CALLI
-76, pg.  4-12) which forces a disk write.  If you are really paranoid, you
can set the VL.WAIT bit which waits until the write is complete so you can
know it worked, but I don't think there is any advantage to this and the
delay would be an anoyance to the user.  You can also force the RIB out
which is probably a good idea after you add a new page to the file.  I
think it always waits.  The RIB is put on the queue as soon as its dirty,
so that may not be necessary.

In summary, between these two operations, you should be able to guarentee
a journal up to date within a couple seconds of a system crash.  Since
the file is open in update mode, it already exists, and you don't have to
worry about DSKCLN cleaning it up into oblivion.

Since PEAK is a deterministic process, it can be viewed as a function
taking two arguments...the source file and the keystrokes.  There are
three exceptions that come to mind: inserting text from another file,
inserting text from a CREAUX, and inserting the date and time.  This
would require some thought, but I think they can all be solved quite 
efficiently.  For example, you just put data from the circuit in the
journal rather than the user's keystrokes so it won't actually build
the circuit on replay.  You could do something similar for data from
another file and most certainly for the date and time.  The journal
should probably start with a checksum of the original file so you can
warn the user that he is applying the journal to a different version
of the file and the result will probably be major-trash.

-Bill

MAGNUM requested the validate stuff and paging was designed also with
it in mind to allow data bases to be recovered from a crash.  As far
as I know, there are no other operating systems with such a sophisticated
paging system in terms of efficiency and data integrity.  With our
ability to share pages between processes, you can add flexibility to
the list.  Dick Ouelette (!*&@^#^&*%!$#) learned this the hard way when
he tried to port MAGNUM to CMS and TOPS-10.
Received: from X62.Tymnet by X930.Tymnet; Wed, 20 Aug 86 11:41:38 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Wed, 20 Aug 86 11:34:35 PDT 
To: Joe Smith <jms@X930.Tymnet> 
Subject: mailers on 62 

    Joe,

    I'm not sure how imuch you know about what Carl's doing on :62 with
    PERP (SUBMIT), XEXEC, CEXEX, and so .A*isince it's his Saturday, I
    thought I'd report this to you.  Even as we speak there are 4 detached
    jobs on :62, all named MAILER, all in ^C state.

    /ken
Received: from X62.Tymnet by X930.Tymnet; Tue, 2 Sep 86 2:27:58 PDT
Return-path: <Peak@X930.Tymnet> 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Thu, 28 Aug 86 14:22:23 PDT 
To: Carl A Baltrunas<Carl@X930.Tymnet> 
Subject: tums/ontyme losing chars 

    Carl,

    Has Mr.  Ernst been up to his usual tricks?  It seems that TUMS (read
    ONTMTP?)  is losing characters en masse again 354 Stcking up mail on
    my esteemed behalf. If so, tell hime to put back whatever he ripped
    out.

    Yours in perilous development at the cutting edge of visual technology,

    Ken 
From: Ken Dawson <Peak@X930.Tymnet> 
Date: Wed, 3 Sep 86 1:15:30 PDT 
To: Carl A Baltrunas<Carl@X930.Tymnet> 
Subject: lest you miss it 

    62's down
From: Osman Guven <osman@X930.Tymnet> 
Date: Sat, 6 Sep 86 19:59:25 PDT 
To: peak, Joe Smith <jms@X930.Tymnet>, Carl A Baltrunas <carl@X930.Tymnet>,
	dencoff 
Subject: PEAK on X930.. 


PEAK seems to have some problem..
Is it me or it real have problem.???

Things go mishap when it is wrtting "Checkpoint".

-Osman-
From: Joe Smith <JMS@X930.Tymnet> 
Date: Thu, 2 Oct 86 1:25:02 PDT 
To: Computer Trivia <JMS>, William R Soley <WRS@B39.Tymnet>,
	BANKS%LATOUR.DEC@DECWRL.ARPA, Craig Fletcher <FletcherC@X930.Tymnet>,
	Dennis Coffey <DenCoff@X930.Tymnet>, oliveb!oliven!gnome@tymix.tymnet,
	Jon Mosser <mosserj@X930.Tymnet>, Ken Dawson <Peak@X930.Tymnet>, Lynn
	Gold <LYNN%PANDA@SUMEX-AIM.ARPA>, Mark Crispin
	<MRC%PANDA@SUMEX-AIM.ARPA>, PRAETORIUS%VAXWRK.DEC@DECWRL.ARPA, Steve
	Capik <SCapik@930.Tymnet> 
Subject: Grace Hopper on David Letterman. 

Admiral Grace Hopper will be on the David Letterman show late Thursday night.
    ^ Š
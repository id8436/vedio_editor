.class public Lcom/google/gdata/data/Source$SourceHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Source.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/Source;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/Source;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    .line 433
    const-class v0, Lcom/google/gdata/data/Source;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 434
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/data/Source;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    iput-object p1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    .line 439
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 440
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 448
    const-string/jumbo v1, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 450
    const-string/jumbo v1, "id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    new-instance v1, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;-><init>(Lcom/google/gdata/data/Source$SourceHandler;Lcom/google/gdata/data/Source$1;)V

    move-object v0, v1

    .line 550
    :cond_0
    :goto_0
    return-object v0

    .line 454
    :cond_1
    const-string/jumbo v1, "updated"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    new-instance v0, Lcom/google/gdata/data/Source$SourceHandler$UpdatedHandler;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/Source$SourceHandler$UpdatedHandler;-><init>(Lcom/google/gdata/data/Source$SourceHandler;)V

    goto :goto_0

    .line 458
    :cond_2
    const-string/jumbo v1, "category"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 460
    new-instance v2, Lcom/google/gdata/data/Category;

    invoke-direct {v2}, Lcom/google/gdata/data/Category;-><init>()V

    .line 462
    iget-object v1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    instance-of v1, v1, Lcom/google/gdata/data/Kind$Adaptable;

    if-eqz v1, :cond_3

    .line 463
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    check-cast v0, Lcom/google/gdata/data/Kind$Adaptable;

    .line 467
    :cond_3
    new-instance v1, Lcom/google/gdata/data/Category$AtomHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/gdata/data/Source$SourceHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v4, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v4, v4, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v4, v4, Lcom/google/gdata/data/Source$SourceState;->categories:Ljava/util/HashSet;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/gdata/data/Category$AtomHandler;-><init>(Lcom/google/gdata/data/Category;Lcom/google/gdata/data/ExtensionProfile;Ljava/util/Set;Lcom/google/gdata/data/Kind$Adaptable;)V

    move-object v0, v1

    goto :goto_0

    .line 470
    :cond_4
    const-string/jumbo v1, "title"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 472
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v1, v1, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v1, v1, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v1, :cond_5

    .line 476
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateTitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 480
    :cond_5
    iget-object v1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v1, v1, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    iput-object v2, v1, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    .line 481
    iget-object v0, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto :goto_0

    .line 483
    :cond_6
    const-string/jumbo v1, "subtitle"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 485
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v1, v1, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v1, v1, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    if-eqz v1, :cond_7

    .line 489
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateSubtitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 493
    :cond_7
    iget-object v1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v1, v1, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    iput-object v2, v1, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    .line 494
    iget-object v0, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto/16 :goto_0

    .line 496
    :cond_8
    const-string/jumbo v1, "rights"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 498
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v1, v1, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v1, v1, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    if-eqz v1, :cond_9

    .line 502
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateRights:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 506
    :cond_9
    iget-object v1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v1, v1, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    iput-object v2, v1, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    .line 507
    iget-object v0, v0, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto/16 :goto_0

    .line 509
    :cond_a
    const-string/jumbo v1, "icon"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 511
    new-instance v1, Lcom/google/gdata/data/Source$SourceHandler$IconHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/data/Source$SourceHandler$IconHandler;-><init>(Lcom/google/gdata/data/Source$SourceHandler;Lcom/google/gdata/data/Source$1;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 513
    :cond_b
    const-string/jumbo v1, "logo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 515
    new-instance v1, Lcom/google/gdata/data/Source$SourceHandler$LogoHandler;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/data/Source$SourceHandler$LogoHandler;-><init>(Lcom/google/gdata/data/Source$SourceHandler;Lcom/google/gdata/data/Source$1;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 517
    :cond_c
    const-string/jumbo v1, "link"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 519
    new-instance v1, Lcom/google/gdata/data/Link;

    invoke-direct {v1}, Lcom/google/gdata/data/Link;-><init>()V

    .line 520
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v0, v0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v0, Lcom/google/gdata/data/Link$AtomHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/gdata/data/Source$SourceHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Link$AtomHandler;-><init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 523
    :cond_d
    const-string/jumbo v1, "author"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 525
    new-instance v1, Lcom/google/gdata/data/Person;

    invoke-direct {v1}, Lcom/google/gdata/data/Person;-><init>()V

    .line 526
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v0, v0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->authors:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v0, Lcom/google/gdata/data/Person$AtomHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/gdata/data/Source$SourceHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Person$AtomHandler;-><init>(Lcom/google/gdata/data/Person;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 529
    :cond_e
    const-string/jumbo v1, "contributor"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 531
    new-instance v1, Lcom/google/gdata/data/Person;

    invoke-direct {v1}, Lcom/google/gdata/data/Person;-><init>()V

    .line 532
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v0, v0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->contributors:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v0, Lcom/google/gdata/data/Person$AtomHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/gdata/data/Source$SourceHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Person$AtomHandler;-><init>(Lcom/google/gdata/data/Person;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 535
    :cond_f
    const-string/jumbo v1, "generator"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v0, v0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    if-eqz v0, :cond_10

    .line 538
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateGenerator:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 542
    :cond_10
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v0, v0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    new-instance v1, Lcom/google/gdata/data/Generator;

    invoke-direct {v1}, Lcom/google/gdata/data/Generator;-><init>()V

    iput-object v1, v0, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    .line 543
    new-instance v0, Lcom/google/gdata/data/Generator$AtomHandler;

    iget-object v1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v1, v1, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v1, v1, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/google/gdata/data/Generator$AtomHandler;-><init>(Lcom/google/gdata/data/Generator;)V

    goto/16 :goto_0

    .line 547
    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto/16 :goto_0
.end method

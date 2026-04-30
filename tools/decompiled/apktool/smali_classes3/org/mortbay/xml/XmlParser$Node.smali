.class public Lorg/mortbay/xml/XmlParser$Node;
.super Ljava/util/AbstractList;
.source "XmlParser.java"


# instance fields
.field private _attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

.field private _lastString:Z

.field private _list:Ljava/util/ArrayList;

.field _parent:Lorg/mortbay/xml/XmlParser$Node;

.field private _path:Ljava/lang/String;

.field private _tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 475
    iput-boolean v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_lastString:Z

    .line 481
    iput-object p1, p0, Lorg/mortbay/xml/XmlParser$Node;->_parent:Lorg/mortbay/xml/XmlParser$Node;

    .line 482
    iput-object p2, p0, Lorg/mortbay/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    .line 484
    if-eqz p3, :cond_2

    .line 486
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    new-array v1, v1, [Lorg/mortbay/xml/XmlParser$Attribute;

    iput-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    .line 487
    :goto_0
    invoke-interface {p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 489
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    :cond_0
    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    .line 492
    :cond_1
    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    new-instance v3, Lorg/mortbay/xml/XmlParser$Attribute;

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/mortbay/xml/XmlParser$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_2
    return-void
.end method

.method static access$600(Lorg/mortbay/xml/XmlParser$Node;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static access$700(Lorg/mortbay/xml/XmlParser$Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized toString(Ljava/lang/StringBuffer;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 697
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 699
    :try_start_0
    const-string/jumbo v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    if-eqz v1, :cond_0

    move v1, v0

    .line 704
    :goto_0
    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 706
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 707
    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    const-string/jumbo v2, "=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/mortbay/xml/XmlParser$Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 710
    const-string/jumbo v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    :cond_0
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 717
    if-eqz p2, :cond_1

    .line 718
    const-string/jumbo v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    move v1, v0

    .line 719
    :goto_1
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 721
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 722
    if-nez v0, :cond_2

    .line 719
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 724
    :cond_2
    instance-of v2, v0, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v2, :cond_3

    .line 725
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    invoke-direct {v0, p1, p2}, Lorg/mortbay/xml/XmlParser$Node;->toString(Ljava/lang/StringBuffer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 727
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 729
    :cond_4
    if-eqz p2, :cond_5

    .line 731
    const-string/jumbo v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    const-string/jumbo v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 736
    :cond_6
    if-eqz p2, :cond_5

    .line 737
    :try_start_2
    const-string/jumbo v0, "/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 610
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    .line 612
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 614
    iget-boolean v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_lastString:Z

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 617
    iget-object v2, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 621
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_lastString:Z

    .line 628
    :goto_1
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 625
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_lastString:Z

    .line 626
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 635
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    .line 636
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 593
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 595
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 596
    instance-of v2, v0, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v2, :cond_0

    .line 598
    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 599
    iget-object v2, v0, Lorg/mortbay/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    :goto_1
    return-object v0

    .line 593
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 604
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-object p2

    .line 552
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 553
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mortbay/xml/XmlParser$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Attribute;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 552
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAttributes()[Lorg/mortbay/xml/XmlParser$Attribute;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_attrs:[Lorg/mortbay/xml/XmlParser$Attribute;

    return-object v0
.end method

.method public getParent()Lorg/mortbay/xml/XmlParser$Node;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_parent:Lorg/mortbay/xml/XmlParser$Node;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_path:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lorg/mortbay/xml/XmlParser$Node;->getParent()Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/xml/XmlParser$Node;->getParent()Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 515
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/xml/XmlParser$Node;->getParent()Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/xml/XmlParser$Node;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_path:Ljava/lang/String;

    .line 519
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_path:Ljava/lang/String;

    return-object v0

    .line 517
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_path:Ljava/lang/String;

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 650
    if-nez v0, :cond_1

    .line 651
    const/4 v0, 0x0

    .line 655
    :cond_0
    :goto_0
    return-object v0

    .line 652
    :cond_1
    invoke-virtual {v0, p2}, Lorg/mortbay/xml/XmlParser$Node;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 654
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_tag:Ljava/lang/String;

    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 749
    new-instance v0, Lorg/mortbay/xml/XmlParser$Node$1;

    invoke-direct {v0, p0, p1}, Lorg/mortbay/xml/XmlParser$Node$1;-><init>(Lorg/mortbay/xml/XmlParser$Node;Ljava/lang/String;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lorg/mortbay/xml/XmlParser$Node;->_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mortbay/xml/XmlParser$Node;->toString(Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 673
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 675
    :try_start_1
    invoke-direct {p0, v1, p1}, Lorg/mortbay/xml/XmlParser$Node;->toString(Ljava/lang/StringBuffer;Z)V

    .line 676
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 677
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 672
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString(ZZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mortbay/xml/XmlParser$Node;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 690
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 691
    :cond_0
    monitor-exit p0

    return-object v0

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

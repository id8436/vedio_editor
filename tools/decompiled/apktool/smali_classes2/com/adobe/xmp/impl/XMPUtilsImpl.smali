.class public Lcom/adobe/xmp/impl/XMPUtilsImpl;
.super Ljava/lang/Object;
.source "XMPUtilsImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMMAS:Ljava/lang/String; = ",\uff0c\uff64\ufe50\ufe51\u3001\u060c\u055d"

.field private static final CONTROLS:Ljava/lang/String; = "\u2028\u2029"

.field private static final QUOTES:Ljava/lang/String; = "\"\u00ab\u00bb\u301d\u301e\u301f\u2015\u2039\u203a"

.field private static final SEMICOLA:Ljava/lang/String; = ";\uff1b\ufe54\u061b\u037e"

.field private static final SPACES:Ljava/lang/String; = " \u3000\u303f"

.field private static final UCK_COMMA:I = 0x2

.field private static final UCK_CONTROL:I = 0x5

.field private static final UCK_NORMAL:I = 0x0

.field private static final UCK_QUOTE:I = 0x4

.field private static final UCK_SEMICOLON:I = 0x3

.field private static final UCK_SPACE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/adobe/xmp/impl/XMPUtilsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/XMPUtilsImpl;->$assertionsDisabled:Z

    .line 1172
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static appendProperties(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/XMPMeta;ZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 518
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 519
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 521
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 522
    check-cast p1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 524
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    return-void

    .line 526
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 529
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 530
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-static {v1, v2, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 532
    if-nez v1, :cond_6

    .line 534
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 535
    new-instance v7, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v7}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v7, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setSchemaNode(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    .line 534
    invoke-direct {v1, v2, v5, v7}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 536
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    move v2, v3

    move-object v5, v1

    .line 541
    :goto_1
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 552
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v2, :cond_3

    if-eqz p4, :cond_0

    .line 555
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 543
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 544
    if-nez p2, :cond_5

    .line 545
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/adobe/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 547
    :cond_5
    invoke-static {p1, v1, v5, p3, p4}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->appendSubtree(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;ZZ)V

    goto :goto_2

    :cond_6
    move v2, v4

    move-object v5, v1

    goto :goto_1
.end method

.method public static appendSubtree(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 601
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 604
    if-eqz p4, :cond_12

    .line 606
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 611
    :goto_0
    if-eqz p4, :cond_4

    if-eqz v0, :cond_4

    .line 613
    if-eqz v1, :cond_0

    .line 615
    invoke-virtual {p2, v1}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 734
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 607
    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    .line 618
    :cond_4
    if-nez v1, :cond_5

    .line 621
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {p2, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 623
    :cond_5
    if-eqz p3, :cond_6

    .line 626
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    .line 627
    invoke-virtual {p2, v1}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 628
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 629
    invoke-virtual {p2, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 636
    :cond_6
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 637
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v4

    .line 638
    if-ne v0, v4, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 647
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 650
    invoke-static {p0, v0, v1, p3, p4}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->appendSubtree(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;ZZ)V

    .line 652
    if-eqz p4, :cond_7

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_7

    .line 654
    invoke-virtual {p2, v1}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_2

    .line 658
    :cond_8
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 663
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 666
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 667
    const-string/jumbo v4, "xml:lang"

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 673
    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 672
    invoke-static {v1, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v4

    .line 674
    if-eqz p4, :cond_b

    .line 675
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 676
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_b

    .line 678
    :cond_a
    if-eq v4, v8, :cond_9

    .line 680
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(I)V

    .line 681
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_9

    .line 683
    invoke-virtual {p2, v1}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_3

    .line 687
    :cond_b
    if-ne v4, v8, :cond_9

    .line 690
    const-string/jumbo v4, "x-default"

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 691
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_d

    .line 693
    :cond_c
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->cloneSubtree(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_3

    .line 697
    :cond_d
    new-instance v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 698
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    .line 699
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 700
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    .line 697
    invoke-direct {v4, v5, v6, v7}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 701
    invoke-virtual {v0, v4}, Lcom/adobe/xmp/impl/XMPNode;->cloneSubtree(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 702
    invoke-virtual {v1, v3, v4}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    goto/16 :goto_3

    .line 707
    :cond_e
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v1

    :cond_f
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 718
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    move v5, v2

    :cond_10
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    .line 726
    if-nez v5, :cond_f

    .line 728
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 729
    invoke-virtual {p2, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    move-object v4, v0

    goto :goto_4

    .line 720
    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 721
    invoke-static {v0, v1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v5, v3

    .line 723
    goto :goto_5

    :cond_12
    move v0, v2

    goto/16 :goto_0
.end method

.method private static applyQuotes(Ljava/lang/String;CCZ)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 1007
    if-nez p0, :cond_0

    .line 1009
    const-string/jumbo p0, ""

    :cond_0
    move v0, v1

    move v2, v1

    .line 1030
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 1060
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1069
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    .line 1071
    :goto_1
    if-le v2, v0, :cond_8

    .line 1080
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    .line 1082
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 1092
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1094
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1097
    :cond_3
    return-object p0

    .line 1032
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1033
    invoke-static {v4}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v4

    .line 1034
    if-nez v0, :cond_5

    if-eq v4, v5, :cond_1

    .line 1039
    :cond_5
    if-ne v4, v3, :cond_6

    .line 1042
    if-nez v2, :cond_1

    move v2, v3

    .line 1030
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1051
    :cond_6
    const/4 v2, 0x3

    if-eq v4, v2, :cond_1

    const/4 v2, 0x5

    if-eq v4, v2, :cond_1

    .line 1052
    const/4 v2, 0x2

    if-ne v4, v2, :cond_7

    if-eqz p3, :cond_1

    :cond_7
    move v2, v1

    goto :goto_3

    .line 1073
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v4

    if-eq v4, v5, :cond_2

    .line 1071
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1084
    :cond_9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1085
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v1

    if-ne v1, v5, :cond_a

    .line 1086
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1, p2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isSurroundingQuote(CCC)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1088
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1082
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static catenateArrayItems(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 86
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 87
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 89
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const-string/jumbo p3, "; "

    .line 93
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 95
    :cond_2
    const-string/jumbo p4, "\""

    .line 98
    :cond_3
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 104
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 106
    if-nez v0, :cond_4

    .line 108
    const-string/jumbo v0, ""

    .line 142
    :goto_0
    return-object v0

    .line 110
    :cond_4
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Named property must be non-alternate array"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 116
    :cond_6
    invoke-static {p3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->checkSeparator(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 119
    invoke-static {p4, v1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->checkQuotes(Ljava/lang/String;C)C

    move-result v2

    .line 124
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 129
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 131
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Array items must be simple"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 133
    :cond_9
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2, p5}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->applyQuotes(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 138
    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static checkQuotes(Ljava/lang/String;C)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 876
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v0

    .line 877
    if-eq v0, v2, :cond_0

    .line 879
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid quoting character"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 882
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, p1

    .line 896
    :cond_1
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->getClosingQuote(C)C

    move-result v1

    if-eq v0, v1, :cond_3

    .line 898
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Mismatched quote pair"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 888
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 889
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v1

    .line 890
    if-eq v1, v2, :cond_1

    .line 892
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid quoting character"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 900
    :cond_3
    return v0
.end method

.method private static checkSeparator(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x4

    .line 835
    move v1, v0

    .line 836
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 854
    if-nez v1, :cond_4

    .line 856
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Separator must have one semicolon"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 838
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v3

    .line 839
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 841
    if-eqz v1, :cond_1

    .line 843
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Separator can have only one semicolon"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    move v1, v2

    .line 836
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 848
    :cond_3
    if-eq v3, v2, :cond_2

    .line 850
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Separator can have only spaces and one semicolon"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 858
    :cond_4
    return-void
.end method

.method private static classifyCharacter(C)I
    .locals 1

    .prologue
    .line 914
    const-string/jumbo v0, " \u3000\u303f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_1

    const/16 v0, 0x200b

    if-gt p0, v0, :cond_1

    .line 916
    :cond_0
    const/4 v0, 0x1

    .line 938
    :goto_0
    return v0

    .line 918
    :cond_1
    const-string/jumbo v0, ",\uff0c\uff64\ufe50\ufe51\u3001\u060c\u055d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 920
    const/4 v0, 0x2

    goto :goto_0

    .line 922
    :cond_2
    const-string/jumbo v0, ";\uff1b\ufe54\u061b\u037e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 924
    const/4 v0, 0x3

    goto :goto_0

    .line 926
    :cond_3
    const-string/jumbo v0, "\"\u00ab\u00bb\u301d\u301e\u301f\u2015\u2039\u203a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    const/16 v0, 0x3008

    if-gt v0, p0, :cond_4

    const/16 v0, 0x300f

    if-le p0, v0, :cond_5

    .line 927
    :cond_4
    const/16 v0, 0x2018

    if-gt v0, p0, :cond_6

    const/16 v0, 0x201f

    if-gt p0, v0, :cond_6

    .line 929
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 931
    :cond_6
    const/16 v0, 0x20

    if-lt p0, v0, :cond_7

    const-string/jumbo v0, "\u2028\u2029"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_8

    .line 933
    :cond_7
    const/4 v0, 0x5

    goto :goto_0

    .line 938
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getClosingQuote(C)C
    .locals 1

    .prologue
    .line 950
    sparse-switch p0, :sswitch_data_0

    .line 986
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 953
    :sswitch_0
    const/16 v0, 0x22

    goto :goto_0

    .line 958
    :sswitch_1
    const/16 v0, 0xbb

    goto :goto_0

    .line 960
    :sswitch_2
    const/16 v0, 0xab

    goto :goto_0

    .line 962
    :sswitch_3
    const/16 v0, 0x2015

    goto :goto_0

    .line 964
    :sswitch_4
    const/16 v0, 0x2019

    goto :goto_0

    .line 966
    :sswitch_5
    const/16 v0, 0x201b

    goto :goto_0

    .line 968
    :sswitch_6
    const/16 v0, 0x201d

    goto :goto_0

    .line 970
    :sswitch_7
    const/16 v0, 0x201f

    goto :goto_0

    .line 972
    :sswitch_8
    const/16 v0, 0x203a

    goto :goto_0

    .line 974
    :sswitch_9
    const/16 v0, 0x2039

    goto :goto_0

    .line 976
    :sswitch_a
    const/16 v0, 0x3009

    goto :goto_0

    .line 978
    :sswitch_b
    const/16 v0, 0x300b

    goto :goto_0

    .line 980
    :sswitch_c
    const/16 v0, 0x300d

    goto :goto_0

    .line 982
    :sswitch_d
    const/16 v0, 0x300f

    goto :goto_0

    .line 984
    :sswitch_e
    const/16 v0, 0x301f

    goto :goto_0

    .line 950
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0xab -> :sswitch_1
        0xbb -> :sswitch_2
        0x2015 -> :sswitch_3
        0x2018 -> :sswitch_4
        0x201a -> :sswitch_5
        0x201c -> :sswitch_6
        0x201e -> :sswitch_7
        0x2039 -> :sswitch_8
        0x203a -> :sswitch_9
        0x3008 -> :sswitch_a
        0x300a -> :sswitch_b
        0x300c -> :sswitch_c
        0x300e -> :sswitch_d
        0x301d -> :sswitch_e
    .end sparse-switch
.end method

.method private static isClosingingQuote(CCC)Z
    .locals 1

    .prologue
    .line 1121
    if-eq p0, p2, :cond_1

    const/16 v0, 0x301d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x301e

    if-eq p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x301f

    if-eq p0, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSurroundingQuote(CCC)Z
    .locals 1

    .prologue
    .line 1109
    if-eq p0, p1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isClosingingQuote(CCC)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 747
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    .line 749
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 821
    :goto_0
    return v0

    .line 754
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    if-nez v1, :cond_3

    .line 757
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 759
    goto :goto_0

    .line 761
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 763
    goto :goto_0

    .line 765
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 766
    invoke-virtual {p0, v3}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 767
    if-nez v0, :cond_6

    move v0, v2

    .line 769
    goto :goto_0

    .line 772
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 776
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    if-eq v0, v1, :cond_4

    move v0, v2

    .line 778
    goto :goto_0

    .line 781
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v0, v3

    .line 821
    goto :goto_0

    .line 783
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 784
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 786
    if-eqz v4, :cond_8

    invoke-static {v0, v4}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_8
    move v0, v2

    .line 788
    goto/16 :goto_0

    .line 799
    :cond_9
    sget-boolean v1, Lcom/adobe/xmp/impl/XMPUtilsImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 801
    :cond_a
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 803
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 806
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    move v0, v2

    .line 815
    :goto_1
    if-nez v0, :cond_b

    move v0, v2

    .line 817
    goto/16 :goto_0

    .line 808
    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 809
    invoke-static {v0, v1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->itemValuesMatch(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v0, v3

    .line 812
    goto :goto_1
.end method

.method public static removeProperties(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 411
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 412
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 414
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 420
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 422
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Property name requires schema namespace"

    .line 423
    const/4 v2, 0x4

    .line 422
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 426
    :cond_1
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    invoke-static {v2, v0, v1, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 429
    if-eqz v2, :cond_3

    .line 431
    if-nez p3, :cond_2

    .line 432
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v1

    .line 433
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v1, v0}, Lcom/adobe/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 433
    if-nez v0, :cond_3

    .line 435
    :cond_2
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 436
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 437
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_3

    .line 440
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 502
    :cond_3
    return-void

    .line 446
    :cond_4
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 454
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_5

    .line 457
    invoke-static {v0, p3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->removeSchemaChildren(Lcom/adobe/xmp/impl/XMPNode;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 459
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 463
    :cond_5
    if-eqz p4, :cond_3

    .line 471
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAliases(Ljava/lang/String;)[Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v2

    move v0, v1

    .line 472
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 474
    aget-object v3, v2, v0

    .line 475
    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-interface {v3}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-static {v4, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v3

    .line 478
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-static {v4, v3, v1, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    .line 479
    if-eqz v3, :cond_6

    .line 481
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 482
    invoke-virtual {v4, v3}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 472
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 493
    :cond_7
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 496
    invoke-static {v0, p3}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->removeSchemaChildren(Lcom/adobe/xmp/impl/XMPNode;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 498
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private static removeSchemaChildren(Lcom/adobe/xmp/impl/XMPNode;Z)Z
    .locals 3

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 576
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 577
    if-nez p1, :cond_2

    .line 578
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/xmp/impl/Utils;->isInternalProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 584
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static separateArrayItems(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 174
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 175
    if-nez p3, :cond_0

    .line 177
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Parameter must not be null"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertImplementation(Lcom/adobe/xmp/XMPMeta;)V

    .line 180
    check-cast p0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 183
    invoke-static {p1, p2, p4, p0}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->separateFindCreateArray(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Lcom/adobe/xmp/impl/XMPMetaImpl;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 188
    const/4 v1, 0x0

    .line 189
    const/4 v0, 0x0

    .line 191
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v0

    move v3, v2

    move v2, v1

    .line 193
    :goto_0
    if-lt v3, v7, :cond_8

    .line 331
    :cond_1
    return-void

    .line 199
    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 200
    invoke-static {v5}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v2

    .line 201
    if-eqz v2, :cond_3

    const/4 v0, 0x4

    if-ne v2, v0, :cond_7

    .line 206
    :cond_3
    :goto_1
    if-ge v3, v7, :cond_1

    .line 211
    const/4 v0, 0x4

    if-eq v2, v0, :cond_c

    move v0, v5

    move v1, v2

    move v2, v3

    .line 215
    :goto_2
    if-lt v2, v7, :cond_9

    .line 244
    :cond_4
    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 314
    :goto_3
    const/4 v5, -0x1

    .line 315
    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v8

    if-le v4, v8, :cond_13

    move v4, v5

    .line 325
    :cond_5
    if-gez v4, :cond_6

    .line 327
    new-instance v4, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v5, "[]"

    const/4 v8, 0x0

    invoke-direct {v4, v5, v3, v8}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 328
    invoke-virtual {v6, v4}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    :cond_6
    move v5, v0

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 197
    :cond_7
    add-int/lit8 v3, v3, 0x1

    :cond_8
    if-lt v3, v7, :cond_2

    goto :goto_1

    .line 217
    :cond_9
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 218
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v1

    .line 220
    if-eqz v1, :cond_a

    const/4 v4, 0x4

    if-eq v1, v4, :cond_a

    .line 221
    const/4 v4, 0x2

    if-ne v1, v4, :cond_b

    if-eqz p5, :cond_b

    .line 215
    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 225
    :cond_b
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 229
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v7, :cond_4

    .line 231
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 232
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v4

    .line 233
    if-eqz v4, :cond_a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    .line 234
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    if-eqz p5, :cond_4

    goto :goto_5

    .line 254
    :cond_c
    invoke-static {v5}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->getClosingQuote(C)C

    move-result v8

    .line 256
    add-int/lit8 v0, v3, 0x1

    .line 257
    const-string/jumbo v4, ""

    move v1, v5

    .line 259
    :goto_6
    if-lt v0, v7, :cond_d

    move-object v3, v4

    move v9, v2

    move v2, v0

    move v0, v1

    move v1, v9

    goto :goto_3

    .line 261
    :cond_d
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 262
    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    move-result v3

    .line 264
    const/4 v1, 0x4

    if-ne v3, v1, :cond_e

    invoke-static {v2, v5, v8}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isSurroundingQuote(CCC)Z

    move-result v1

    if-nez v1, :cond_f

    .line 268
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move-object v4, v1

    move v1, v2

    move v2, v3

    goto :goto_6

    .line 278
    :cond_f
    add-int/lit8 v1, v0, 0x1

    if-ge v1, v7, :cond_10

    .line 280
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 281
    invoke-static {v1}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->classifyCharacter(C)I

    .line 289
    :goto_8
    if-ne v2, v1, :cond_11

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    add-int/lit8 v0, v0, 0x1

    .line 295
    goto :goto_7

    .line 286
    :cond_10
    const/16 v1, 0x3b

    goto :goto_8

    .line 296
    :cond_11
    invoke-static {v2, v5, v8}, Lcom/adobe/xmp/impl/XMPUtilsImpl;->isClosingingQuote(CCC)Z

    move-result v1

    if-nez v1, :cond_12

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 305
    :cond_12
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    move-object v3, v4

    move v9, v0

    move v0, v2

    move v2, v9

    .line 306
    goto/16 :goto_3

    .line 317
    :cond_13
    invoke-virtual {v6, v4}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4
.end method

.method private static separateFindCreateArray(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Lcom/adobe/xmp/impl/XMPMetaImpl;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x66

    .line 346
    invoke-static {p2, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isOnlyArrayOptions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Options can only provide array form"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 354
    :cond_0
    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v2

    .line 355
    invoke-virtual {p3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_3

    .line 360
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    .line 361
    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    :cond_1
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Named property must be non-alternate array"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 366
    :cond_2
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/PropertyOptions;->equalArrayTypes(Lcom/adobe/xmp/options/PropertyOptions;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Mismatch of specified and existing array form"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 376
    :cond_3
    invoke-virtual {p3}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 377
    invoke-virtual {v1, v5}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    .line 376
    invoke-static {v0, v2, v5, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 378
    if-nez v0, :cond_4

    .line 380
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Failed to create named array"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 383
    :cond_4
    return-object v0
.end method

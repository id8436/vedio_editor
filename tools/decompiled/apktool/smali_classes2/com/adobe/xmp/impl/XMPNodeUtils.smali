.class public Lcom/adobe/xmp/impl/XMPNodeUtils;
.super Ljava/lang/Object;
.source "XMPNodeUtils.java"

# interfaces
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CLT_FIRST_ITEM:I = 0x5

.field static final CLT_MULTIPLE_GENERIC:I = 0x3

.field static final CLT_NO_VALUES:I = 0x0

.field static final CLT_SINGLE_GENERIC:I = 0x2

.field static final CLT_SPECIFIC_MATCH:I = 0x1

.field static final CLT_XDEFAULT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/adobe/xmp/impl/XMPNodeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    .line 46
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 780
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v1, "[]"

    invoke-direct {v0, v1, p2, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 781
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v2, "xml:lang"

    invoke-direct {v1, v2, p1, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 782
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 784
    const-string/jumbo v2, "x-default"

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method static chooseLocalizedText(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v10, 0x66

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 819
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v1

    if-nez v1, :cond_0

    .line 821
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Localized text array is not alt-text"

    invoke-direct {v0, v1, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_1

    .line 825
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    .line 887
    :goto_0
    return-object v0

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    move-object v2, v0

    move v3, v4

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 872
    if-ne v3, v8, :cond_9

    .line 874
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    aput-object v2, v0, v8

    goto :goto_0

    .line 835
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 838
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 840
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Alt-text array item is not simple"

    invoke-direct {v0, v1, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 842
    :cond_4
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 843
    const-string/jumbo v6, "xml:lang"

    invoke-virtual {v0, v8}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 845
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Alt-text array item has no language qualifier"

    invoke-direct {v0, v1, v10}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 849
    :cond_6
    invoke-virtual {v0, v8}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 852
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 854
    new-array v1, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    aput-object v0, v1, v8

    move-object v0, v1

    goto :goto_0

    .line 856
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 858
    if-nez v2, :cond_c

    .line 863
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    .line 864
    goto :goto_1

    .line 865
    :cond_8
    const-string/jumbo v7, "x-default"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v0

    .line 867
    goto/16 :goto_1

    .line 876
    :cond_9
    if-le v3, v8, :cond_a

    .line 878
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    aput-object v2, v0, v8

    goto/16 :goto_0

    .line 880
    :cond_a
    if-eqz v1, :cond_b

    .line 882
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v4

    aput-object v1, v0, v8

    goto/16 :goto_0

    .line 887
    :cond_b
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    invoke-virtual {p0, v8}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    aput-object v1, v0, v8

    goto/16 :goto_0

    :cond_c
    move-object v0, v2

    goto :goto_2
.end method

.method static deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 311
    :goto_0
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 315
    :cond_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method static detectAltText(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 747
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    const/4 v2, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 760
    :goto_0
    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 763
    invoke-static {p0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 766
    :cond_1
    return-void

    .line 752
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 753
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 756
    goto :goto_0
.end method

.method public static findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x66

    const/4 v2, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Named children only allowed for schemas and structs"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Named children not allowed for arrays"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 162
    :cond_1
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 168
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 170
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 172
    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 173
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v0, p1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 174
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 178
    :cond_3
    sget-boolean v1, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_4
    return-object v0
.end method

.method private static findIndexedItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x66

    const/4 v4, 0x1

    .line 564
    .line 568
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 570
    if-ge v0, v4, :cond_0

    .line 572
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Array index must be larger than zero"

    .line 573
    const/16 v2, 0x66

    .line 572
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :catch_0
    move-exception v0

    .line 578
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Array index not digits."

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 581
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 584
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v2, "[]"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 585
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 586
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 589
    :cond_1
    return v0
.end method

.method public static findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Empty XMPPath"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 213
    :cond_1
    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {p0, v0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 214
    if-nez v1, :cond_3

    .line 286
    :cond_2
    :goto_0
    return-object v2

    .line 218
    :cond_3
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    invoke-virtual {v1, v3}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    move-object v0, v1

    :goto_1
    move v3, v4

    .line 228
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v3, v5, :cond_5

    .line 279
    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 283
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setOptions(Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_4
    move-object v2, v1

    .line 286
    goto :goto_0

    .line 230
    :cond_5
    :try_start_1
    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-static {v1, v5, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->followXPathStep(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPathSegment;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 231
    if-nez v1, :cond_7

    .line 233
    if-eqz p2, :cond_2

    .line 236
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 271
    if-eqz v0, :cond_6

    .line 273
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 275
    :cond_6
    throw v1

    .line 240
    :cond_7
    :try_start_2
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 243
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 247
    if-ne v3, v4, :cond_a

    .line 248
    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 249
    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v5

    if-eqz v5, :cond_a

    .line 251
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 261
    :cond_8
    :goto_3
    if-nez v0, :cond_9

    move-object v0, v1

    .line 228
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 254
    :cond_a
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_8

    .line 255
    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v5

    if-ne v5, v4, :cond_8

    .line 256
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 258
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_b
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private static findQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 538
    sget-boolean v0, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 540
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findQualifierByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 542
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 544
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 545
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 547
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 550
    :cond_1
    return-object v0
.end method

.method public static findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 99
    sget-boolean v0, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 102
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 104
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 105
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 106
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setSchemaNode(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 104
    invoke-direct {v1, p1, v0}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 107
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 110
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 113
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_1
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    move-object v0, v1

    .line 130
    :cond_2
    return-object v0

    .line 120
    :cond_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Unregistered schema namespace URI"

    .line 121
    const/16 v2, 0x65

    .line 120
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    return-object v0
.end method

.method private static followXPathStep(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPathSegment;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 460
    const/4 v0, 0x0

    .line 462
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v1

    .line 464
    if-ne v1, v4, :cond_1

    .line 466
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 517
    :cond_0
    :goto_0
    return-object v0

    .line 468
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 471
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-static {p0, v0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v2

    if-nez v2, :cond_3

    .line 479
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Indexing applied to non-array"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 482
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 484
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findIndexedItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)I

    move-result v1

    .line 511
    :goto_1
    if-gt v4, v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 513
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 488
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    goto :goto_1

    .line 490
    :cond_5
    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 492
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 493
    aget-object v2, v1, v3

    .line 494
    aget-object v1, v1, v4

    .line 495
    invoke-static {p0, v2, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupFieldSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 497
    :cond_6
    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 499
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 500
    aget-object v2, v1, v3

    .line 501
    aget-object v1, v1, v4

    .line 503
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v3

    .line 502
    invoke-static {p0, v2, v1, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupQualSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 507
    :cond_7
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Unknown array indexing step in FollowXPathStep"

    .line 508
    const/16 v2, 0x9

    .line 507
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static lookupFieldSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 607
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 609
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    if-gt v0, v3, :cond_0

    if-ltz v2, :cond_1

    .line 634
    :cond_0
    return v2

    .line 611
    :cond_1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    .line 613
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v3

    if-nez v3, :cond_2

    .line 615
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Field selector must be used on array of struct"

    .line 616
    const/16 v2, 0x66

    .line 615
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    move v3, v1

    .line 619
    :goto_1
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v5

    if-le v3, v5, :cond_3

    .line 609
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_3
    invoke-virtual {v4, v3}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v5

    .line 622
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 619
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 626
    :cond_5
    invoke-virtual {v5}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v0

    .line 629
    goto :goto_2
.end method

.method static lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 904
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Language item must be used on array"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    move v0, v1

    .line 909
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 922
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 911
    :cond_1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 912
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "xml:lang"

    invoke-virtual {v2, v1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 909
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 916
    :cond_3
    invoke-virtual {v2, v1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1
.end method

.method private static lookupQualSelector(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 655
    const-string/jumbo v1, "xml:lang"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    invoke-static {p2}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-static {p0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v1

    .line 659
    if-gez v1, :cond_0

    and-int/lit16 v2, p3, 0x1000

    if-lez v2, :cond_0

    .line 661
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v2, "[]"

    invoke-direct {v1, v2, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 662
    new-instance v2, Lcom/adobe/xmp/impl/XMPNode;

    const-string/jumbo v3, "xml:lang"

    const-string/jumbo v4, "x-default"

    invoke-direct {v2, v3, v4, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 663
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 664
    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 688
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 669
    goto :goto_0

    :cond_1
    move v1, v0

    .line 674
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 688
    const/4 v0, -0x1

    goto :goto_0

    .line 676
    :cond_2
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 674
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 680
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 681
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 682
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 684
    goto :goto_0
.end method

.method static normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x2

    .line 705
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    .line 711
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 713
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 714
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "x-default"

    invoke-virtual {v2, v5}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 719
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(I)V

    .line 720
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_2
    if-ne v0, v1, :cond_0

    .line 730
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :catch_0
    move-exception v3

    .line 725
    sget-boolean v3, Lcom/adobe/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 711
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static serializeNodeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 395
    if-nez p0, :cond_1

    move-object v1, v0

    .line 433
    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->removeControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 399
    :cond_1
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 401
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 403
    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 405
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertFromInteger(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 407
    :cond_3
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 409
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/adobe/xmp/XMPUtils;->convertFromLong(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 411
    :cond_4
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 413
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/adobe/xmp/XMPUtils;->convertFromDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 415
    :cond_5
    instance-of v1, p0, Lcom/adobe/xmp/XMPDateTime;

    if-eqz v1, :cond_6

    .line 417
    check-cast p0, Lcom/adobe/xmp/XMPDateTime;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 419
    :cond_6
    instance-of v1, p0, Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_7

    .line 421
    check-cast p0, Ljava/util/GregorianCalendar;

    invoke-static {p0}, Lcom/adobe/xmp/XMPDateTimeFactory;->createFromCalendar(Ljava/util/Calendar;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v1

    .line 422
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 424
    :cond_7
    instance-of v1, p0, [B

    if-eqz v1, :cond_8

    .line 426
    check-cast p0, [B

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 430
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static setNodeValue(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 326
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->serializeNodeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "xml:lang"

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    :cond_0
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 351
    if-nez p0, :cond_0

    .line 354
    new-instance p0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {p0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 374
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Structs and arrays can\'t have values"

    .line 375
    const/16 v2, 0x67

    .line 374
    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 378
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->assertConsistency(I)V

    .line 380
    return-object p0
.end method

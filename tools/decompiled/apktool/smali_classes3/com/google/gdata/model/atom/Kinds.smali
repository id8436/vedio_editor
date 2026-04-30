.class Lcom/google/gdata/model/atom/Kinds;
.super Ljava/lang/Object;
.source "Kinds.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getElementKind(Lcom/google/gdata/model/Element;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    sget-object v0, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Category;

    .line 45
    const-string/jumbo v2, "http://schemas.google.com/g/2005#kind"

    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Category;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Category;->getTerm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

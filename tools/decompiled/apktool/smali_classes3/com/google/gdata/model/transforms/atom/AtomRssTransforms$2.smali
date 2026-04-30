.class final Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$2;
.super Ljava/lang/Object;
.source "AtomRssTransforms.java"

# interfaces
.implements Lcom/google/gdata/model/Metadata$VirtualValue;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 159
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->PUBLISHED:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p1, v0}, Lcom/google/gdata/model/Element;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/DateTime;

    .line 160
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/DateTime;->toStringRfc822()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/DateTime;->parseRfc822(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 167
    return-void
.end method

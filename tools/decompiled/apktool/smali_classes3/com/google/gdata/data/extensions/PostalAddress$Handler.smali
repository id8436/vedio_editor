.class Lcom/google/gdata/data/extensions/PostalAddress$Handler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "PostalAddress.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/PostalAddress;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/extensions/PostalAddress;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/extensions/PostalAddress;Lcom/google/gdata/data/extensions/PostalAddress$1;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/gdata/data/extensions/PostalAddress$Handler;-><init>(Lcom/google/gdata/data/extensions/PostalAddress;)V

    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 114
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v0, "rel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/PostalAddress;->rel:Ljava/lang/String;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string/jumbo v0, "label"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/PostalAddress;->label:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_2
    const-string/jumbo v0, "primary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->parseBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    iput-boolean v0, v1, Lcom/google/gdata/data/extensions/PostalAddress;->primary:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public processEndElement()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/extensions/PostalAddress;->value:Ljava/lang/String;

    .line 129
    return-void
.end method

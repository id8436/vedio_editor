.class Lcom/google/api/gbase/client/GmAttributes$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "GmAttributes.java"


# instance fields
.field final synthetic this$0:Lcom/google/api/gbase/client/GmAttributes;


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/GmAttributes;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/api/gbase/client/GmAttributes$1;->this$0:Lcom/google/api/gbase/client/GmAttributes;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 152
    const-string/jumbo v0, "http://base.google.com/ns-metadata/1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "attribute"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v1, Lcom/google/gdata/data/AttributeHelper;

    invoke-direct {v1, p3}, Lcom/google/gdata/data/AttributeHelper;-><init>(Lorg/xml/sax/Attributes;)V

    .line 156
    const-string/jumbo v0, "name"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 157
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, v5}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->getInstance(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v3

    .line 159
    const-string/jumbo v0, "importance"

    const-class v4, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    invoke-virtual {v1, v0, v5, v4}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;

    .line 162
    new-instance v4, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-direct {v4, v2, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 164
    iget-object v2, p0, Lcom/google/api/gbase/client/GmAttributes$1;->this$0:Lcom/google/api/gbase/client/GmAttributes;

    invoke-virtual {v2, v4, v0}, Lcom/google/api/gbase/client/GmAttributes;->addAttribute(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Lcom/google/api/gbase/client/GmAttributes$GmAttribute$Importance;)V

    .line 166
    invoke-virtual {v1}, Lcom/google/gdata/data/AttributeHelper;->assertAllConsumed()V

    .line 167
    new-instance v0, Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

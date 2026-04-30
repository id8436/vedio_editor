.class Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "GoogleBaseAttributesExtension.java"


# instance fields
.field private final attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

.field final synthetic this$0:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 1948
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->this$0:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 1949
    invoke-static {p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$000(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1950
    invoke-static {p1, v0, p3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$100(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 1951
    invoke-static {p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$200(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->access$200(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 1952
    return-void
.end method

.method static synthetic access$400(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    return-object v0
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1

    .prologue
    .line 1965
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler$1;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public processEndElement()V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$GroupSubAttrHandler;->attribute:Lcom/google/api/gbase/client/GoogleBaseAttribute;

    iget-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setValue(Ljava/lang/String;)V

    .line 1959
    :cond_0
    return-void
.end method

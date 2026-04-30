.class Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ServiceExceptionInitializer.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;


# direct methods
.method private constructor <init>(Lcom/google/gdata/util/ServiceExceptionInitializer;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;)V

    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const-string/jumbo v0, "http://schemas.google.com/g/2005"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string/jumbo v0, "error"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-static {v0}, Lcom/google/gdata/util/ServiceExceptionInitializer;->access$100(Lcom/google/gdata/util/ServiceExceptionInitializer;)Lcom/google/gdata/util/ServiceException;

    .line 182
    new-instance v0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    .line 185
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

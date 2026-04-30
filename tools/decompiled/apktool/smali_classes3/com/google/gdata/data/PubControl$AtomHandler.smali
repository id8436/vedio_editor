.class public Lcom/google/gdata/data/PubControl$AtomHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "PubControl.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/PubControl;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/PubControl;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/gdata/data/PubControl$AtomHandler;->this$0:Lcom/google/gdata/data/PubControl;

    .line 84
    const-class v0, Lcom/google/gdata/data/PubControl;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 85
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
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/google/gdata/data/PubControl$AtomHandler;->this$0:Lcom/google/gdata/data/PubControl;

    invoke-static {v0}, Lcom/google/gdata/data/PubControl;->access$000(Lcom/google/gdata/data/PubControl;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string/jumbo v0, "draft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lcom/google/gdata/data/PubControl$DraftHandler;

    iget-object v2, p0, Lcom/google/gdata/data/PubControl$AtomHandler;->this$0:Lcom/google/gdata/data/PubControl;

    invoke-direct {v0, v2, v1}, Lcom/google/gdata/data/PubControl$DraftHandler;-><init>(Lcom/google/gdata/data/PubControl;Lcom/google/gdata/data/PubControl$1;)V

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 98
    goto :goto_0
.end method

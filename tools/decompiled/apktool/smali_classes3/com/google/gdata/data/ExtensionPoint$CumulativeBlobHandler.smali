.class public Lcom/google/gdata/data/ExtensionPoint$CumulativeBlobHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ExtensionPoint.java"


# instance fields
.field private final extProfile:Lcom/google/gdata/data/ExtensionProfile;

.field private final extendedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/gdata/data/ExtensionPoint;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionPoint$CumulativeBlobHandler;->this$0:Lcom/google/gdata/data/ExtensionPoint;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/google/gdata/data/ExtensionPoint$CumulativeBlobHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 386
    iput-object p3, p0, Lcom/google/gdata/data/ExtensionPoint$CumulativeBlobHandler;->extendedClass:Ljava/lang/Class;

    .line 387
    invoke-virtual {p1, p2, p3, p0}, Lcom/google/gdata/data/ExtensionPoint;->initializeArbitraryXml(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lcom/google/gdata/util/XmlParser$ElementHandler;)V

    .line 388
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
    .line 397
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint$CumulativeBlobHandler;->this$0:Lcom/google/gdata/data/ExtensionPoint;

    iget-object v1, p0, Lcom/google/gdata/data/ExtensionPoint$CumulativeBlobHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v2, p0, Lcom/google/gdata/data/ExtensionPoint$CumulativeBlobHandler;->extendedClass:Ljava/lang/Class;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/ExtensionPoint;->getExtensionHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

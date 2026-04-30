.class public Lcom/google/gdata/data/introspection/Categories$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Categories.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/introspection/Categories;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/introspection/Categories;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Categories$Handler;->this$0:Lcom/google/gdata/data/introspection/Categories;

    .line 227
    const-class v0, Lcom/google/gdata/data/introspection/Categories;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lorg/xml/sax/Attributes;)V

    .line 228
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const-string/jumbo v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string/jumbo v0, "category"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v1, Lcom/google/gdata/data/Category;

    invoke-direct {v1}, Lcom/google/gdata/data/Category;-><init>()V

    .line 241
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories$Handler;->this$0:Lcom/google/gdata/data/introspection/Categories;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/introspection/Categories;->addCategory(Lcom/google/gdata/data/Category;)V

    .line 242
    new-instance v0, Lcom/google/gdata/data/Category$AtomHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/google/gdata/data/Category$AtomHandler;-><init>(Lcom/google/gdata/data/Category;)V

    .line 245
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

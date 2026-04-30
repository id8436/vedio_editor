.class Lcom/google/gdata/data/photos/ExifTags$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ExifTags.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/photos/ExifTags;

.field final synthetic val$extProfile:Lcom/google/gdata/data/ExtensionProfile;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/photos/ExifTags;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/gdata/data/photos/ExifTags$1;->this$0:Lcom/google/gdata/data/photos/ExifTags;

    iput-object p2, p0, Lcom/google/gdata/data/photos/ExifTags$1;->val$extProfile:Lcom/google/gdata/data/ExtensionProfile;

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
    .line 349
    const-string/jumbo v0, "http://schemas.google.com/photos/exif/2007"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Lcom/google/gdata/data/photos/impl/ExifTag;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/photos/impl/ExifTag;-><init>(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/google/gdata/data/photos/ExifTags$1;->this$0:Lcom/google/gdata/data/photos/ExifTags;

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/photos/ExifTags;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 352
    iget-object v1, p0, Lcom/google/gdata/data/photos/ExifTags$1;->val$extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/photos/impl/ExifTag;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/photos/ExifTags$1;->this$0:Lcom/google/gdata/data/photos/ExifTags;

    iget-object v1, p0, Lcom/google/gdata/data/photos/ExifTags$1;->val$extProfile:Lcom/google/gdata/data/ExtensionProfile;

    const-class v2, Lcom/google/gdata/data/photos/ExifTags;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/gdata/data/photos/ExifTags;->access$000(Lcom/google/gdata/data/photos/ExifTags;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

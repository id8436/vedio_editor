.class Lcom/google/gdata/data/appsforyourdomain/Nickname$1;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Nickname.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/appsforyourdomain/Nickname;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/appsforyourdomain/Nickname;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Nickname$1;->this$0:Lcom/google/gdata/data/appsforyourdomain/Nickname;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Nickname$1;->this$0:Lcom/google/gdata/data/appsforyourdomain/Nickname;

    iput-object p3, v0, Lcom/google/gdata/data/appsforyourdomain/Nickname;->name:Ljava/lang/String;

    .line 104
    :cond_0
    return-void
.end method

.method public processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Nickname$1;->this$0:Lcom/google/gdata/data/appsforyourdomain/Nickname;

    iget-object v0, v0, Lcom/google/gdata/data/appsforyourdomain/Nickname;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/google/gdata/util/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "nickname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 114
    return-void
.end method

.class Lcom/google/gdata/data/appsforyourdomain/Quota$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Quota.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/appsforyourdomain/Quota;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/Quota;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Quota$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Quota;

    .line 89
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Email;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 90
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 98
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "limit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Quota$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Quota;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/appsforyourdomain/Quota;->limit:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v2, "Invalid apps:quota/@limit."

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Quota$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Quota;

    iget-object v0, v0, Lcom/google/gdata/data/appsforyourdomain/Quota;->limit:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v1, "apps:quota/@limit is required."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 116
    return-void
.end method

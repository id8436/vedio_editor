.class Lcom/google/api/gbase/client/GmPublishingPriority$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "GmPublishingPriority.java"


# instance fields
.field final synthetic this$0:Lcom/google/api/gbase/client/GmPublishingPriority;


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/GmPublishingPriority;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/api/gbase/client/GmPublishingPriority$1;->this$0:Lcom/google/api/gbase/client/GmPublishingPriority;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/gbase/client/GmPublishingPriority$1;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string/jumbo v1, "No value specified for publishing_priority element."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GmPublishingPriority$1;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->getByText(Ljava/lang/String;)Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    move-result-object v1

    .line 133
    if-nez v1, :cond_1

    .line 134
    new-instance v1, Lcom/google/gdata/util/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid value specified for publishing_priority element: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/api/gbase/client/GmPublishingPriority$1;->this$0:Lcom/google/api/gbase/client/GmPublishingPriority;

    invoke-static {v0, v1}, Lcom/google/api/gbase/client/GmPublishingPriority;->access$002(Lcom/google/api/gbase/client/GmPublishingPriority;Lcom/google/api/gbase/client/GmPublishingPriority$Value;)Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    .line 139
    return-void
.end method

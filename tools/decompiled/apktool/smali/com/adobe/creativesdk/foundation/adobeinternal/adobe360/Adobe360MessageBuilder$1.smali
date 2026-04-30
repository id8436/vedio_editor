.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$1;
.super Ljava/util/HashMap;
.source "Adobe360MessageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;)V
    .locals 1

    .prologue
    .line 209
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 211
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->inputAssets:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$1;->putAll(Ljava/util/Map;)V

    .line 212
    return-void
.end method

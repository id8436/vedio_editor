.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$2;
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
    .line 217
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 219
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder;->outputAssets:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360MessageBuilder$2;->putAll(Ljava/util/Map;)V

    .line 220
    return-void
.end method

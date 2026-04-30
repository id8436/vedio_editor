.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$1CompositeCacheResult;
.super Ljava/lang/Object;
.source "AdobeCommunitySession.java"


# instance fields
.field public done:Z

.field public error:Ljava/lang/String;

.field public links:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;)V
    .locals 1

    .prologue
    .line 2601
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$1CompositeCacheResult;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$1CompositeCacheResult;->done:Z

    return-void
.end method

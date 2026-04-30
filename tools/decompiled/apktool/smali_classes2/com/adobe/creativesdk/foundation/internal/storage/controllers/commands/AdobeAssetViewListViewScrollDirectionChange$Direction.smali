.class public final enum Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;
.super Ljava/lang/Enum;
.source "AdobeAssetViewListViewScrollDirectionChange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

.field public static final enum SCROLL_DOWN:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

.field public static final enum SCROLL_UNKNOWN:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

.field public static final enum SCROLL_UP:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    const-string/jumbo v1, "SCROLL_DOWN"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->SCROLL_DOWN:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    .line 42
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    const-string/jumbo v1, "SCROLL_UP"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->SCROLL_UP:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    const-string/jumbo v1, "SCROLL_UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->SCROLL_UNKNOWN:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->SCROLL_DOWN:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->SCROLL_UP:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->SCROLL_UNKNOWN:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    return-object v0
.end method

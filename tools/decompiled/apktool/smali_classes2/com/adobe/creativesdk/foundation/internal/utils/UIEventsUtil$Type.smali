.class public final enum Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;
.super Ljava/lang/Enum;
.source "UIEventsUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

.field public static final enum kCollabFragUIEvent:Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

.field public static final enum kFabUIEvent:Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 13
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    const-string/jumbo v1, "kFabUIEvent"

    invoke-direct {v0, v1, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;->kFabUIEvent:Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    .line 14
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    const-string/jumbo v1, "kCollabFragUIEvent"

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;->kCollabFragUIEvent:Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    .line 11
    new-array v0, v4, [Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;->kFabUIEvent:Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;->kCollabFragUIEvent:Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;->_val:I

    .line 19
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;->_val:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    return-object v0
.end method

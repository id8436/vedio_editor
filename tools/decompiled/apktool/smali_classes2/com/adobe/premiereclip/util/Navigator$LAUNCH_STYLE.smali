.class public final enum Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;
.super Ljava/lang/Enum;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

.field public static final enum SLIDE_FROM_BOTTOM:Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

.field public static final enum SLIDE_FROM_TOP:Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    const-string/jumbo v1, "SLIDE_FROM_TOP"

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;->SLIDE_FROM_TOP:Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    .line 71
    new-instance v0, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    const-string/jumbo v1, "SLIDE_FROM_BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;->SLIDE_FROM_BOTTOM:Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    sget-object v1, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;->SLIDE_FROM_TOP:Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;->SLIDE_FROM_BOTTOM:Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;->$VALUES:[Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;->$VALUES:[Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/util/Navigator$LAUNCH_STYLE;

    return-object v0
.end method

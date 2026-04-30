.class public final enum Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;
.super Ljava/lang/Enum;
.source "SequencePlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

.field public static final enum LOADING:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

.field public static final enum PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

.field public static final enum PLAYING_CLIP:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

.field public static final enum PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->LOADING:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    new-instance v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    new-instance v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    const-string/jumbo v1, "PLAYING_CLIP"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_CLIP:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    new-instance v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    const-string/jumbo v1, "PLAYING_SEQUENCE"

    invoke-direct {v0, v1, v5}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->LOADING:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_CLIP:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->$VALUES:[Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->$VALUES:[Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    return-object v0
.end method

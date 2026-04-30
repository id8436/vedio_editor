.class public final enum Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;
.super Ljava/lang/Enum;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

.field public static final enum AUDIO_DELETE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

.field public static final enum AUDIO_FADE_IN:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

.field public static final enum AUDIO_FADE_OUT:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

.field public static final enum AUDIO_MIX:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

.field public static final enum AUDIO_SNAP_TO_BEAT:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

.field public static final enum AUDIO_START_CHANGE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

.field public static final enum AUDIO_SYNC_PACE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

.field public static final enum AUDIO_VOLUME:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const-string/jumbo v1, "AUDIO_FADE_IN"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_FADE_IN:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const-string/jumbo v1, "AUDIO_FADE_OUT"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_FADE_OUT:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const-string/jumbo v1, "AUDIO_MIX"

    invoke-direct {v0, v1, v5}, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_MIX:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const-string/jumbo v1, "AUDIO_VOLUME"

    invoke-direct {v0, v1, v6}, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_VOLUME:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const-string/jumbo v1, "AUDIO_DELETE"

    invoke-direct {v0, v1, v7}, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_DELETE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const-string/jumbo v1, "AUDIO_SNAP_TO_BEAT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_SNAP_TO_BEAT:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const-string/jumbo v1, "AUDIO_START_CHANGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_START_CHANGE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const-string/jumbo v1, "AUDIO_SYNC_PACE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_SYNC_PACE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    .line 96
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_FADE_IN:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_FADE_OUT:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_MIX:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_VOLUME:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_DELETE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_SNAP_TO_BEAT:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_START_CHANGE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_SYNC_PACE:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->$VALUES:[Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->$VALUES:[Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    return-object v0
.end method

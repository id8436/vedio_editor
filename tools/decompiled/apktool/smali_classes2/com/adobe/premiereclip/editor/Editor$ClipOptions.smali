.class public final enum Lcom/adobe/premiereclip/editor/Editor$ClipOptions;
.super Ljava/lang/Enum;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/editor/Editor$ClipOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

.field public static final enum AUDIO_FADE_IN:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

.field public static final enum AUDIO_FADE_OUT:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

.field public static final enum AUDIO_MUTE:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

.field public static final enum AUDIO_SMART_VOLUME:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

.field public static final enum EXPOSURE:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

.field public static final enum HIGHLIGHTS:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

.field public static final enum SHADOWS:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

.field public static final enum SPEED:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

.field public static final enum VOLUME:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const-string/jumbo v1, "EXPOSURE"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->EXPOSURE:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const-string/jumbo v1, "HIGHLIGHTS"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->HIGHLIGHTS:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const-string/jumbo v1, "SHADOWS"

    invoke-direct {v0, v1, v5}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->SHADOWS:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const-string/jumbo v1, "SPEED"

    invoke-direct {v0, v1, v6}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->SPEED:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const-string/jumbo v1, "VOLUME"

    invoke-direct {v0, v1, v7}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->VOLUME:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const-string/jumbo v1, "AUDIO_FADE_IN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_FADE_IN:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const-string/jumbo v1, "AUDIO_FADE_OUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_FADE_OUT:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const-string/jumbo v1, "AUDIO_SMART_VOLUME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_SMART_VOLUME:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    new-instance v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    const-string/jumbo v1, "AUDIO_MUTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_MUTE:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    .line 92
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->EXPOSURE:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->HIGHLIGHTS:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->SHADOWS:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->SPEED:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->VOLUME:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_FADE_IN:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_FADE_OUT:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_SMART_VOLUME:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->AUDIO_MUTE:Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->$VALUES:[Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/editor/Editor$ClipOptions;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/editor/Editor$ClipOptions;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->$VALUES:[Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/editor/Editor$ClipOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/editor/Editor$ClipOptions;

    return-object v0
.end method

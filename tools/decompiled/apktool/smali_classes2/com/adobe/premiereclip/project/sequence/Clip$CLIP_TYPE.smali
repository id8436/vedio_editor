.class public final enum Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;
.super Ljava/lang/Enum;
.source "Clip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum AUDIO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum EMPTY_AUDIO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum NONE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum STORY_CARD:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum TRANSITION:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field public static final enum VIDEO_BUMPER:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->NONE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "IMAGE_NON_TITLE"

    invoke-direct {v0, v1, v5}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "IMAGE_TITLE"

    invoke-direct {v0, v1, v6}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "EMPTY_VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "AUDIO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->AUDIO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "EMPTY_AUDIO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_AUDIO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "TRANSITION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->TRANSITION:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "VIDEO_BUMPER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO_BUMPER:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const-string/jumbo v1, "STORY_CARD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->STORY_CARD:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->NONE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->AUDIO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_AUDIO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->TRANSITION:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO_BUMPER:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->STORY_CARD:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->$VALUES:[Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->$VALUES:[Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    return-object v0
.end method

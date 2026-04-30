.class public final enum Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;
.super Ljava/lang/Enum;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

.field public static final enum MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

.field public static final enum MIN:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

.field public static final enum SCRUBBER:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 886
    new-instance v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    const-string/jumbo v1, "MIN"

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MIN:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    new-instance v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    const-string/jumbo v1, "MAX"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    new-instance v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    const-string/jumbo v1, "SCRUBBER"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->SCRUBBER:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    .line 885
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    sget-object v1, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MIN:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->SCRUBBER:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->$VALUES:[Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

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
    .line 885
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;
    .locals 1

    .prologue
    .line 885
    const-class v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;
    .locals 1

    .prologue
    .line 885
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->$VALUES:[Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    return-object v0
.end method

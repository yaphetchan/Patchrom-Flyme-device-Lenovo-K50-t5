.class public Landroid/service/notification/NotificationListenerService$RankingMap;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$RankingMap$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntercepted:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

.field private mRanks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1000
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$RankingMap$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationListenerService$RankingMap;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 887
    return-void
.end method

.method private constructor <init>(Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    .line 893
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method private buildInterceptedSetLocked()V
    .locals 3

    .prologue
    .line 974
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v1}, Landroid/service/notification/NotificationRankingUpdate;->getInterceptedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "dndInterceptedKeys":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    .line 976
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 973
    return-void
.end method

.method private buildRanksLocked()V
    .locals 5

    .prologue
    .line 964
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v2

    .line 965
    .local v2, "orderedKeys":[Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    .line 966
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 967
    aget-object v1, v2, v0

    .line 968
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildVisibilityOverridesLocked()V
    .locals 5

    .prologue
    .line 981
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getVisibilityOverrides()Landroid/os/Bundle;

    move-result-object v2

    .line 982
    .local v2, "visibilityBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    .line 983
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 984
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 980
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getRank(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 922
    monitor-enter p0

    .line 923
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 924
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildRanksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 927
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRanks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 928
    .local v0, "rank":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    .line 922
    .end local v0    # "rank":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 928
    .restart local v0    # "rank":Ljava/lang/Integer;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getVisibilityOverride(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 950
    monitor-enter p0

    .line 951
    :try_start_0
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 952
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildVisibilityOverridesLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 955
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 956
    .local v0, "overide":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 957
    const/16 v1, -0x3e8

    return v1

    .line 950
    .end local v0    # "overide":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 959
    .restart local v0    # "overide":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private isAmbient(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 932
    iget-object v3, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getFirstAmbientIndex()I

    move-result v0

    .line 933
    .local v0, "firstAmbientIndex":I
    if-gez v0, :cond_0

    .line 934
    return v2

    .line 936
    :cond_0
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRank(Ljava/lang/String;)I

    move-result v1

    .line 937
    .local v1, "rank":I
    if-ltz v1, :cond_1

    if-lt v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isIntercepted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 941
    monitor-enter p0

    .line 942
    :try_start_0
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 943
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService$RankingMap;->buildInterceptedSetLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 946
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mIntercepted:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 915
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRank(Ljava/lang/String;)I

    move-result v2

    .line 916
    .local v2, "rank":I
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->isAmbient(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->isIntercepted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v6

    .line 917
    :goto_0
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v5

    move-object v0, p2

    move-object v1, p1

    .line 916
    invoke-static/range {v0 .. v5}, Landroid/service/notification/NotificationListenerService$Ranking;->-wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZZI)V

    .line 918
    if-ltz v2, :cond_1

    :goto_1
    return v7

    :cond_0
    move v4, v7

    .line 916
    goto :goto_0

    :cond_1
    move v7, v6

    .line 918
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 997
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$RankingMap;->mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 996
    return-void
.end method
.class Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView$InternalExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "PullToRefreshExpandableListView.java"

# interfaces
.implements Lcom/lenovo/component/pulltorefresh/library/internal/EmptyViewMethodAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalExpandableListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView;


# direct methods
.method public constructor <init>(Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView$InternalExpandableListView;->this$0:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView;

    .line 68
    invoke-direct {p0, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method


# virtual methods
.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView$InternalExpandableListView;->this$0:Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView;

    invoke-virtual {v0, p1}, Lcom/lenovo/component/pulltorefresh/library/PullToRefreshExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 77
    return-void
.end method
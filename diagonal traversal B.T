#include<bits/stdc++.h>
using namespace std;

struct Node{
    int data;
    Node* left;
    Node* right;
};

struct Node* create_node(int new_data){
    Node* new_node=new Node();
    new_node->data=new_data;
    new_node->left=NULL;
    new_node->right=NULL;
    return new_node;
}

void diagonal(Node* root){
    vector<int>v;
    Node* temp=root;
    queue<Node*>q;
    while(temp!=NULL){
        v.push_back(temp->data);
        if(temp->left!=NULL){
            q.push(temp->left);
        }

        if(temp->right!=NULL){
            temp=temp->right;
        }
        else{
            if(q.size()>=1){
                temp=q.front();
                q.pop();
            }
            else{
                temp=NULL;
            }
        }
    }
    for(auto x:v){
        cout<<x<<" ";
    }
}


int main(){
    Node* root=create_node(1);
    root->left=create_node(2);
    root->right=create_node(3);
    root->left->left=create_node(4);
    root->left->right=create_node(5);
    diagonal(root);
    return 0;
}

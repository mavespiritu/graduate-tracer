<?php
return [
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
    ],
    'modules' => [
        'user' => [
            'class' => 'dektrium\user\Module',
            'admins' => ['administrator'],
            'enableRegistration' => true,
            'enableConfirmation' => true,
            'enableUnconfirmedLogin' => false,
            'enablePasswordRecovery' => false,
            'controllerMap' => [
                'admin' => [
                    'class' => 'dektrium\user\controllers\AdminController',
                    'as access' => [
                        'class' => 'yii\filters\AccessControl',
                        'rules' => [
                            [
                                'allow' => true,
                                'roles' => ['Administrator'],
                            ],
                        ],
                    ],
                ],
            ],
        ],
        'rbac' => [
            'class' => 'dektrium\rbac\RbacWebModule',
        ],
    ]
];

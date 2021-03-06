module.exports = {
	branches: [
		'+([0-9])?(.{+([0-9]),x}).x',
		'master',
		'next',
		{
			name: 'develop',
			prerelease: 'qa',
		},
		{
			name: 'beta',
			prerelease: true,
		},
	],
	npmPublish: true,
	plugins: [
		'@semantic-release/commit-analyzer',
		[
			'@semantic-release/release-notes-generator',
			{
				writerOpts: {
					// headerPartial: 'DUDE!',
					finalizeContext: (context, options, commits, keyCommit) => {
						context.title = 'Sprint 31';
						return context;
					},
					// transform: (commit, context) => {
					// 	context.title = 'YEUUUUUH';
					// 	return context;
					// },
				},
			},
		],
		'@semantic-release/npm',
		[
			'@semantic-release/git',
			{
				assets: ['ios/ColuConsumerRn/Info.plist', 'ios/ColuConsumerRn.xcodeproj/project.pbxproj', 'docs/CHANGELOG.md', 'android/app/build.gradle', 'package.json'],
				message: 'chore(release): ${nextRelease.version} \n\n${nextRelease.notes}',
			},
		],
		[
			'@semantic-release/github',
			{
				successComment: false,
				failComment: false,
			},
		],
	],
};
